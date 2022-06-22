import React, { lazy } from "react";
import { useRoutes } from "react-router-dom";
import Layout from "@/pages/Layout";
import Login from "@/pages/Login";
import NotFound from "@/pages/NotFound";
import AuthorizedRoute from "@/components/AuthorizedRoute";

const Dashboard = lazy(() => import("@/pages/Dashboard"));
const Menu = lazy(() => import("@/pages/System/Menu"));
const User = lazy(() => import("@/pages/System/User"));
const Role = lazy(() => import("@/pages/System/Role"));
const DataDictionary = lazy(() => import("@/pages/System/DataDictionary"));
//新增编制计划录入
const Plan = lazy(() => import("@/pages/employeePlan/planAdd"));
//编制调用申请
const Call = lazy(() => import("@/pages/Application/call"));
// 在编人数维护
const EmployeeMng = lazy(() => import("@/pages/employee/employeeMng"));
// 招聘岗位分配
const PostAssign = lazy(() => import("@/pages/EploInfoMaintain/PostAssign"));
// 编制信息查询/更新
const InfoQuery = lazy(() => import("@/pages/EploInfoMaintain/InfoQuery"))
export default () => {
  return useRoutes([
    {
      path: "/login",
      element: <Login />,
    },
    {
      path: "",
      element: <AuthorizedRoute element={<Layout />} />,
      children: [
        {
          path: "dashboard",
          element: <AuthorizedRoute element={<Dashboard />} />,
        },
        {
          path: "system/menu",
          element: <AuthorizedRoute element={<Menu />} />,
        },
        {
          path: "system/user",
          element: <AuthorizedRoute element={<User />} />,
        },
        {
          path: "system/role",
          element: <AuthorizedRoute element={<Role />} />,
        },
        {
          path: "system/dataDictionary",
          element: <AuthorizedRoute element={<DataDictionary />} />,

        },
        // 在编人数维护
        {
          path: "employee/employeeMng",
          element: <AuthorizedRoute element={<EmployeeMng />} />
        },
        // 新增编制计划录入
        {
          path: "employeePlan/planAdd",
          element: <AuthorizedRoute element={<Plan />} />
        },
        // 招聘岗位分配
        {
          path: "eploInfoMaintain/postAssign",
          element: <AuthorizedRoute element={<PostAssign />} />
        },
        // 编制信息查询/更新
        {
          path: "eploInfoMaintain/infoQuery",
          element: <AuthorizedRoute element={<InfoQuery />} />
        },
        //编制申请管理
        {
          path: "ApplicationManagement/call",
          element: <AuthorizedRoute element={<Call />} />
        },
        {
          path: "*",
          element: <NotFound />,
        },
      ],
    },
  ]);
};
