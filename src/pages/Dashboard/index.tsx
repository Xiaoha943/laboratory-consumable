import React from "react";
import * as echarts from "echarts/core";
import { BarChart } from 'echarts/charts';
import { GridComponent, LegendComponent } from "echarts/components";
import { CanvasRenderer } from "echarts/renderers";
import ReactEchartsCore from 'echarts-for-react/lib/core';
import moment from 'moment';
import { Card, Collapse, Tabs, DatePicker, Space, Table } from "antd";
import './style.less';
import img from '@/assets/agree.png'
const { Panel } = Collapse;
const { TabPane } = Tabs;
const dateFormat = 'YYYY/MM/DD';

echarts.use([BarChart, GridComponent, LegendComponent, CanvasRenderer]);
const option = {
  xAxis: {
    data: ['研发交付部', '综合管理部', '财务管理部', '客户运营部', '代理服务部', '云基础架构部']
  },
  legend: {

  },
  yAxis: {},
  series: [
    {
      name: '在编人数',
      type: 'bar',
      data: [50, 45, 23, 36, 56, 32],
      barGap: '50%',
      barCategoryGap: '40%',
      label: {
        show: true,
        position: 'top'
      },
    },
    {
      name: '剩余可用编制',
      type: 'bar',
      label: {
        show: true,
        position: 'top'
      },
      data: [40, 36, 18, 16, 45, 20]
    }
  ]
}

const text = `
已入职：3
剩余新增编内：1；剩余离职补聘：2；剩余转岗补聘：1
`;
const data = [
  '何晶豪(财资产品团队)发起提交申请 11月20日(星期六) 调任',
  '何晶豪(财资产品团队)发起提交申请 11月21日(星期天) 调任',
  '何晶豪(财资产品团队)发起提交申请 11月22日(星期一) 调任',
]
const optionData = 471
const callback = (key: any) => {
  console.log(key);

}

const Dashboard = () => {
  return <>
    <Card className='totoalCard'>
      <div className='flexDiv'>
        <Card size="small" title="目前编制状况" extra={<a href="#">更多</a>} className='nextDiv' >
          <div className='nextDivCard' >
            <p className='nextpName' > 2022总编制:{optionData}</p>
            <div>
              <DatePicker style={{}} defaultValue={moment('2022/01/01', dateFormat)} format={dateFormat} />
            </div>
          </div>
          <ReactEchartsCore className='EchartsName' option={option} echarts={echarts} />
        </Card>
        <div className='right'>
          <p className='rightTitle'>我的招聘岗位</p>
          <Card bordered={false}  >
            <Collapse defaultActiveKey={['1']} onChange={callback} >
              <Panel header="研发交付部-产品研发中心-CBS应用团队-JAVA开发工程师" key="1">
                <p>{text}</p>
              </Panel>
              <Panel header="研发交付部-产品研发中心-CBS应用团队-前端开发工程师" key="2">
                <p>{text}</p>
              </Panel>
              <Panel header="研发交付部-产品研发中心-TMS应用团队-JAVA开发工程师" key="3">
                <p>{text}</p>
              </Panel>
            </Collapse>
          </Card>
        </div>
      </div>
      <Card className='flexBottom'>
        <p className='flexBottom_p'>审批信息</p>
        <Tabs className='flexBottom_tab' defaultActiveKey="1" onChange={callback}>
          <TabPane tab="我发起的 3" key="1">
            {data.map((e) => {
              return (
                <div className='tabPane_Div' key={e}>
                  <p className='tabPane_title' style={{ fontWeight: 600 }}>计划</p>
                  <p className='tabPane_date'>2022-01-01</p>
                  <img className='tabPane_img' src={img} alt="" />
                  <p className='tabPane_content'>{e}</p>
                </div>)
            })}
          </TabPane>
          <TabPane tab="待我审批的 2" key="2">
            待审批
          </TabPane>
          <TabPane tab="我已审批的 3" key="3">
            已审批
          </TabPane>
          <TabPane tab="抄送我的 0" key="4">
            抄送
          </TabPane>
        </Tabs>
      </Card>
    </Card>
  </>;
};

export default Dashboard;
