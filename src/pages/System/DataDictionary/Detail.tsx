import React, { useEffect } from "react";

import { Form, Input, Modal, InputNumber } from "antd";
import { OperateType } from "@/types";
import { useDispatch, useSelector } from "react-redux";
import {
  getFormValue,
  setFormValue,
  createOrUpdate,
  clearFormValue,
  getDataDictionaryTree,
} from "./store";
import { AppState } from "@/store";
import { ModalOk } from "@/hooks";
import { ERadio, ETreeSelect } from "@/components/Field";

interface DetailProps {
  id?: number;
  confirmLoading: boolean;
  onClose: () => void;
  onOk: ModalOk;
  onRefresh: () => void;
  visible: boolean;
  operateType: OperateType;
}

const layout = {
  labelCol: { span: 4 },
  wrapperCol: { span: 20 },
};

export const Detail: React.FC<DetailProps> = ({
  onClose,
  onOk,
  visible,
  operateType,
  id,
  confirmLoading,
  onRefresh,
}) => {
  const [form] = Form.useForm();
  const dispatch = useDispatch();
  const { formValue, treeData } = useSelector(
    (state: AppState) => state.dataDictionarySlice
  );

  useEffect(() => {
    if (visible && operateType !== OperateType.Create && id) {
      dispatch(getFormValue(id));
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [id, operateType, visible]);

  useEffect(() => {
    form.setFieldsValue(formValue);
    dispatch(setFormValue(formValue));
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [formValue]);

  const handleOk = async () => {
    try {
      const params = await form.validateFields();
      const isSuccess = await createOrUpdate(params, id);
      if (isSuccess) {
        form.resetFields();
        dispatch(clearFormValue());
        dispatch(getDataDictionaryTree());
        onRefresh();
      }
      return isSuccess;
    } catch (error) {
      console.error(error);
      return false;
    }
  };
  const close = () => {
    form.resetFields();
    dispatch(clearFormValue());
    onClose();
  };
  return (
    <>
      <Modal
        getContainer={false}
        title='数据字典'
        visible={visible}
        onOk={onOk(handleOk)}
        confirmLoading={confirmLoading}
        onCancel={close}
      >
        <Form form={form} {...layout}>
          <Form.Item
            label='字典名称'
            name='dictionaryName'
            rules={[{ required: true }]}
          >
            <Input placeholder='请输入' />
          </Form.Item>
          <Form.Item
            label='字典编码'
            name='dictionaryCode'
            rules={[{ required: true }]}
          >
            <Input placeholder='请输入' />
          </Form.Item>
          <Form.Item
            label='字典值'
            name='dictionaryValue'
            rules={[{ required: true }]}
          >
            <Input placeholder='请输入' />
          </Form.Item>
          <Form.Item label='描述' name='description'>
            <Input placeholder='请输入' />
          </Form.Item>
          <Form.Item label='父级菜单' name={["parent", "id"]}>
            <ETreeSelect
              placeholder='请输入'
              dataSource={treeData}
            />
          </Form.Item>
          <Form.Item label='排序' name='sort'>
            <InputNumber placeholder='请输入' />
          </Form.Item>
          <Form.Item label='显示状态' name='visiable'>
            <ERadio
              dataSource={[
                {
                  label: "显示",
                  value: 1,
                },
                {
                  label: "隐藏",
                  value: 2,
                },
              ]}
            />
          </Form.Item>
        </Form>
      </Modal>
    </>
  );
};
Detail.defaultProps = {
  confirmLoading: false,
  visible: false,
  operateType: OperateType.Create,
} as DetailProps;
