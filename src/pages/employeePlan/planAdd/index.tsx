/* eslint-disable jsx-a11y/anchor-is-valid */
import React from "react";
import { Card, Form, Button, Input, Row, Col, Select, Space, Table,DatePicker} from "antd";
import { EmptyView } from "@/components/EmptyView";
import { apiSystemRoleQueryPage, Role } from "@/api/apis/system";
import { useAntdTable } from "ahooks";
import { PaginatedParams } from "ahooks/lib/useAntdTable";
import { ColumnsType } from "antd/lib/table";
import { DeletePopconfirm } from "@/components/Popconfirm";
const { Option, OptGroup } = Select;

const getColumns = (
  onEdit = (id: number) => { },
  onRomve = (id: number) => { }
): ColumnsType<any> => {
  return [
    {
      title: "编制数量",
      dataIndex: "munber",
    },
    {
      title: "计划日期",
      dataIndex: "planDate",
    },
    {
      title: "状态",
      dataIndex: "type",
    },
    {
      title: "操作者",
      dataIndex: "people",
    },
    {
      title: "操作",
      dataIndex: "tableAction",
      render: (text, record) => (
        <Space size="middle">
          <a onClick={() => onEdit(record.id)}>修改</a>
          <DeletePopconfirm onClick={() => onRomve(record.id)} />
        </Space>
      ),
    },
  ];
};

// 表格数据
const data = [
  {
    id: 0,
    munber: '40',
    planDate: '2022.01.01',
    type: '已提交',
    people: '韩静文',
  },
  {
    id: 1,
    munber: '10',
    planDate: '2021.12.01',
    type: '待审批',
    people: '苏蕴涵',
  },
  {
    id: 2,
    munber: '60',
    planDate: '2022.01.01',
    type: '审批通过',
    people: '韩静文',
  },
]

// 下拉框数据
const partItems: any = [
  "已提交",
  "待审批",
  "审批通过",
]


const getTableData = async (
  { current, pageSize }: PaginatedParams[0],
  formData: Partial<Role>
) => {
  const params = { ...formData, pageNum: current, pageSize };
  // const res = await apiSystemRoleQueryPage(params);
  return {
    // total: res.total,
    // list: res.data,
  };
};

export default () => {
  const [form] = Form.useForm();
  const { tableProps, search } = useAntdTable(getTableData, {
    form,
  });

  const [centers, setCenters] = React.useState([partItems]);

  const handlePartChange = (value: any) => {
    setCenters([value]);
   
  };
  const handleRemove = async (id: number) => {
    console.log('handleRemove');
  };
  const onFinish = (values: any) => {
    console.log('Success:', values);
  };

  const onFinishFailed = (errorInfo: any) => {
    console.log('Failed:', errorInfo);
  };
  const onChange = (date:any, dateString:any)=>{
    console.log(date, dateString);
  }
  return (
    <>
      <Card bordered={false}>
        <Form
          onFinish={onFinish}
          onFinishFailed={onFinishFailed}
        >
          <Row gutter={24}>
            <Col span={6}>
              <Form.Item name="type" label="状态" >
                <Select style={{ width: 240 }} onChange={handlePartChange}>
                  {partItems.map((item: any,index:number) => (
                    <Option key={index} value={item}>{item}</Option>
                  ))}
                </Select>
              </Form.Item>
            </Col>
            <Col span={6}>
              <Form.Item name="planDate" label="计划日期">
                <Space direction="vertical">
                    <DatePicker onChange={onChange} />
                </Space>
              </Form.Item>
            </Col>
            <Col span={6} style={{ textAlign: "right" }}>
              <Space>
                <Button type="primary" htmlType="submit">
                  搜索
                </Button>
                <Button>重置</Button>
              </Space>
            </Col>
          </Row>
        </Form>
      </Card>
      <EmptyView />
      <Card bordered={false}>
        <Space>
          {/* <Button type="primary" onClick={}> */}
          <Button type="primary" >
            新建
          </Button>
          {/* <Button onClick={} disabled={isDisabled}> */}
          <Button >
            删除
          </Button>
        </Space>
        <EmptyView />
        <Table columns={getColumns(handleRemove)} dataSource={data} rowKey ='id' >
        </Table>
      </Card>
    </>
  );
};
