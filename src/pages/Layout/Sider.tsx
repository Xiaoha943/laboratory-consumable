import React, { useEffect } from "react";
import { Menu as AMenu, Card } from "antd";
import { MenuTypes, Menu } from "@/api/apis/system";
import { useNavigate } from "react-router-dom";

import * as icons from "@ant-design/icons";
import { useSelector, useDispatch } from "react-redux";
import { AppState } from "@/store";
import { getMenuTree, addTab, setActiveKey, ThemeName } from "./store";
import { Immutable } from "immer";

const { SubMenu, Item } = AMenu;

const getIcon = (iconType?: string) => {
  return iconType ? React.createElement((icons as any)[iconType]) : null;
};

export interface SiderLayoutProps {
  themeName: ThemeName;
}

const SiderLayout = ({ themeName }: SiderLayoutProps) => {
  const nav = useNavigate();
  const dispatch = useDispatch();
  useEffect(() => {
    dispatch(getMenuTree());
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  const handleClick = (params: Immutable<Menu>) => () => {
    dispatch(
      addTab({
        title: params.name,
        key: String(params.id),
        path: params.path,
      })
    );
    dispatch(setActiveKey(String(params.id)));
    document.title = params.name;
    nav(params.path);
  };

  // const { menus } = useSelector((state: AppState) => state.globalReducer);
  const menus: Menu[] = [
    {
      action: "",
      children: [{
        action: "",
        createdAt: "2020-09-20T15:39:38.412Z",
        icon: "ExperimentOutlined",
        id: 0,
        name: "在编人数维护",
        path: "/employee/employeeMng",
        sort: 0,
        type: 3,
        updatedAt: "2022-01-04T03:36:15.000Z",
        visiable: 1, parentId: 0,
        parent: undefined
      }],
      createdAt: "2020-09-20T15:38:18.301Z",
      icon: "BankOutlined",
      id: 8,
      name: "在编人数维护请求",
      path: "/employee",
      sort: 0,
      type: 1,
      updatedAt: "2022-01-04T03:35:30.000Z",
      visiable: 1,
      parentId: 0,
      parent: undefined
    },
    {
      action: "",
      children: [{
        action: "",
        createdAt: "2020-09-20T15:39:38.412Z",
        icon: "ExperimentOutlined",
        id: 1,
        name: "新增编制计划录入",
        path: "/employeePlan/planAdd",
        sort: 1,
        type: 3,
        updatedAt: "2022-01-04T03:36:15.000Z",
        visiable: 1, parentId: 1,
        parent: undefined
      }],
      createdAt: "2020-09-20T15:38:18.301Z",
      icon: "BankOutlined",
      id: 7,
      name: "编制计划录入",
      path: "/employeePlan",
      sort: 0,
      type: 1,
      updatedAt: "2022-01-04T03:35:30.000Z",
      visiable: 1,
      parentId: 1,
      parent: undefined
    },
    {
      action: "",
      children: [{
        action: "",
        createdAt: "2020-09-20T15:39:38.412Z",
        icon: "ExperimentOutlined",
        id: 2,
        name: "招聘岗位分配",
        path: "/eploInfoMaintain/postAssign",
        sort: 1,
        type: 3,
        updatedAt: "2022-01-04T03:36:15.000Z",
        visiable: 1, parentId: 2,
        parent: undefined
      }, {
        action: "",
        createdAt: "2020-09-20T15:39:38.412Z",
        icon: "ExperimentOutlined",
        id: 3,
        name: "编制信息查询/更新",
        path: "/eploInfoMaintain/infoQuery",
        sort: 1,
        type: 3,
        updatedAt: "2022-01-04T03:36:15.000Z",
        visiable: 1, parentId: 2,
        parent: undefined
      }],
      createdAt: "2020-09-20T15:38:18.301Z",
      icon: "BankOutlined",
      id: 9,
      name: "编制信息维护",
      path: "/eploInfoMaintain",
      sort: 0,
      type: 1,
      updatedAt: "2022-01-04T03:35:30.000Z",
      visiable: 1,
      parentId: 2,
      parent: undefined
    },
    {
      action: "",
      children: [{
        action: "",
        createdAt: "2020-09-20T15:39:38.412Z",
        icon: "ExperimentOutlined",
        id: 4,
        name: "编制调用申请",
        path: "/ApplicationManagement/call",
        sort: 1,
        type: 3,
        updatedAt: "2022-01-04T03:36:15.000Z",
        visiable: 1, parentId: 3,
        parent: undefined
      }, {
        action: "",
        createdAt: "2020-09-20T15:39:38.412Z",
        icon: "ExperimentOutlined",
        id: 5,
        name: "离职补替申请",
        path: "/bainzhi/shneqin",
        sort: 1,
        type: 3,
        updatedAt: "2022-01-04T03:36:15.000Z",
        visiable: 1, parentId: 3,
        parent: undefined
      }, {
        action: "",
        createdAt: "2020-09-20T15:39:38.412Z",
        icon: "ExperimentOutlined",
        id: 6,
        name: "编制内转申请",
        path: "/bainzhi/shneqin",
        sort: 1,
        type: 3,
        updatedAt: "2022-01-04T03:36:15.000Z",
        visiable: 1, parentId: 3,
        parent: undefined
      }, {
        action: "",
        createdAt: "2020-09-20T15:39:38.412Z",
        icon: "ExperimentOutlined",
        id: 7,
        name: "转岗补聘申请",
        path: "/bainzhi/shneqin",
        sort: 1,
        type: 3,
        updatedAt: "2022-01-04T03:36:15.000Z",
        visiable: 1, parentId: 3,
        parent: undefined
      }],
      createdAt: "2020-09-20T15:38:18.301Z",
      icon: "BankOutlined",
      id: 10,
      name: "编制申请管理",
      path: "/ApplicationManagement",
      sort: 0,
      type: 1,
      updatedAt: "2022-01-04T03:35:30.000Z",
      visiable: 1,
      parentId: 3,
      parent: undefined
    },
    {
      action: "",
      createdAt: "2020-09-20T15:38:18.301Z",
      icon: "BankOutlined",
      id: 11,
      name: "审批管理",
      path: "/employee",
      sort: 0,
      type: 1,
      updatedAt: "2022-01-04T03:35:30.000Z",
      visiable: 1,
      parentId: 4,
      parent: undefined
    },
  ]

  return (
    <Card bordered={false} className="layout-sider" bodyStyle={{ padding: 0 }}>
      <div className="logo">
        <span></span>
        <p>编制管理系统</p>
      </div>
      <AMenu mode="inline" theme={themeName}>
        {menus.map((v) =>
          v.type === MenuTypes.LAYOUT ? (
            <SubMenu key={v.id} title={v.name} icon={getIcon(v.icon)}>
              {v.children?.map((i) => (
                <Item
                  onClick={handleClick(i)}
                  key={i.id}
                  icon={getIcon(i.icon)}
                >
                  {i.name}
                </Item>
              ))}
            </SubMenu>
          ) : (
            <Item onClick={handleClick(v)} key={v.id} icon={getIcon(v.icon)}>
              {v.name}
            </Item>
          )
        )}
      </AMenu>
    </Card>
  );
};
SiderLayout.defaultProps = {
  themeName: ThemeName.LIGHT,
} as SiderLayoutProps;
export default SiderLayout;
