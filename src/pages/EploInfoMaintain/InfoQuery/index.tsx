import React from "react"
import { Card, Form, Row, Col, Select, Button, Space, Table, DatePicker } from 'antd';
import { ColumnsType } from 'antd/lib/table';
import { EmptyView } from "@/components/EmptyView";
import { DeletePopconfirm } from "@/components/Popconfirm";
import moment from 'moment';

const { Option, OptGroup } = Select;
const { RangePicker } = DatePicker;
const dateFormat = 'YYYY-MM-DD';
// 表格列名
const getColumns = (

): ColumnsType<any> => {
  return [
    {
      title: '负责HR',
      dataIndex: 'Person',
      key: 'Person',
    },
    {
      title: '部门',
      dataIndex: 'part',
      key: 'part',
    },
    {
      title: '中心',
      dataIndex: 'center',
      key: 'center',
    },
    {
      title: '团队',
      dataIndex: 'team',
      key: 'team',
    },
    {
      title: '岗位',
      dataIndex: 'post',
      key: 'post',
    },
    {
      title: '职级',
      dataIndex: 'grade',
      key: 'grade',
    },
    {
      title: '地区',
      dataIndex: 'address',
      key: 'address',
    },
    {
      title: '在编数量',
      dataIndex: 'quantity',
      key: 'quantity',
    },
    {
      title: '编内新增',
      dataIndex: 'post_add',
      key: 'post_add',
    },
    {
      title: '离职补聘',
      dataIndex: 'post_leave',
      key: 'post_leave',
    },
    {
      title: '开始招聘时间',
      dataIndex: 'Date',
      key: 'Date',
    },
    {
      title: '操作',
      dataIndex: 'action',
      key: 'action',
      render: (text, record) => (
        <Space size="middle">
          <a>入职</a>
          <a>离职</a>
        </Space>
      ),
    },
  ]
}
// 表格数据
const data = [
  {
    key: '1',
    Person: '金静',
    part: '研发交付部',
    center: '产品研发中心',
    team: 'CBS应用团队',
    post: 'JAVA开发工程师',
    grade: '初',
    address: '武汉',
    quantity: '10',
    post_add: '2',
    post_leave: '1',
    Date: '2021-01-01',
  },
  {
    key: '2',
    Person: '金静',
    part: '研发交付部',
    center: '产品研发中心',
    team: 'CBS应用团队',
    post: 'JAVA开发工程师',
    grade: '初',
    address: '武汉',
    quantity: '10',
    post_add: '2',
    post_leave: '1',
    Date: '2021-01-01',
  },
  {
    key: '3',
    Person: '金静',
    part: '研发交付部',
    center: '产品研发中心',
    team: 'CBS应用团队',
    post: 'JAVA开发工程师',
    grade: '初',
    address: '武汉',
    quantity: '10',
    post_add: '2',
    post_leave: '1',
    Date: '2021-01-01',
  },
]

// 下拉框数据
const partItems: any = [
  "研发交付部",
  "综合管理部",
  "财务管理部",
  "客户运营部",
  "代理服务部",
  "云基础架构部"
]
const centerItems: any = {
  研发交付部: ['产品研发中心', '技术管理中心', '项目交付中心'],
  综合管理部: ['无'],
  财务管理部: ['咨询中心', '财务中心'],
  客户运营部: ['产品销售中心', '营销支持中心', '客户服务中心'],
  代理服务部: ['无'],
  云基础架构部: ['无']
}

export default () => {
  const [centers, setCenters] = React.useState(centerItems[partItems[0]]);
  const [secondCenter, setSecondCenter] = React.useState(centerItems[partItems[0]][0]);

  const handlePartChange = (value: any) => {
    setCenters(centerItems[value]);
    setSecondCenter(centerItems[value][0]);
  };
  const onSecondCenterChange = (value: any) => {
    setSecondCenter(value);
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
  return (
    <>
      <Card bordered={false}>
        <Form
          onFinish={onFinish}
          onFinishFailed={onFinishFailed}
        >
          <Row gutter={24}>
          <Col span={8}>
              <Form.Item name="Person" label="负责HR">
                <Select placeholder="请选择" style={{ width: 223 }}>
                  <Option value="金静">金静</Option>
                </Select>
              </Form.Item>
            </Col>
            <Col span={8}>
              <Form.Item name="part" label="部门" >
                <Select style={{ width: 240 }} onChange={handlePartChange}>
                  {partItems.map((item: any) => (
                    <Option key={item} value={item}>{item}</Option>
                  ))}
                </Select>
              </Form.Item>
            </Col>
            <Col span={8}>
              <Form.Item name="center" label="中心">
                <Select style={{ width: 344}} value={secondCenter} onChange={onSecondCenterChange}>
                  {centers.map((item: any) => (
                    <Option key={item} value={item}>{item}</Option>
                  ))}
                </Select>
              </Form.Item>
            </Col>
            <Col span={8}>
              <Form.Item name="team" label="团队">
                <Select placeholder="请选择" style={{ width: 240 }}>
                  <OptGroup label="产品研发中心">
                    <Option value="财资产品团队">财资产品团队</Option>
                    <Option value="CBS应用团队">CBS应用团队</Option>
                    <Option value="TMS应用团队">TMS应用团队</Option>
                    <Option value="财资核心团队">财资核心团队</Option>
                    <Option value="费用支出场景化产品团队">费用支出场景化产品团队</Option>
                  </OptGroup>
                  <OptGroup label="技术管理中心">
                    <Option value="测试支持团队">测试支持团队</Option>
                    <Option value="财资测试团队">财资测试团队</Option>
                    <Option value="技术管理团队">技术管理团队</Option>
                  </OptGroup>
                </Select>
              </Form.Item>
            </Col>
            <Col span={8}>
              <Form.Item name="post" label="岗位">
                <Select placeholder="请选择" style={{ width: 240 }}>
                  <Option value="前端开发工程师">前端开发工程师</Option>
                  <Option value="Java开发工程师">Java开发工程师</Option>
                  <Option value="测试工程师">测试工程师</Option>
                  <Option value="UI设计师">UI设计师</Option>
                  <Option value="产品经理">产品经理</Option>
                </Select>
              </Form.Item>
            </Col>
            <Col span={8}>
              <Form.Item name="Date" label="开始招聘日期">
                <RangePicker
                  defaultValue={[moment('2021/01/01', dateFormat), moment('2021/01/01', dateFormat)]}
                  format={dateFormat}
                />
              </Form.Item>
            </Col>
            <Col span={22} style={{ textAlign: "right" }}>
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
      <Table columns={getColumns()} dataSource={data}>
      </Table>
    </>
  )
}