import React, { useState } from 'react';
import {
    Form,
    Button,
    Select,
    Row,
    Card,
    Col,
    Input
} from 'antd';

export default () => {
    const { TextArea } = Input;
    return (
        <Card>
            <h2 style={{color:'#666666',fontWeight:'bold'}}>编制调用申请单:</h2>
            <Form style={{margin:'auto',color:'#898989'}}
                labelCol={{
                    span: 8,
                }}
                wrapperCol={{
                    span: 18,
                }}
                layout="horizontal"

            >
                <Row gutter={12}>
                    <Col className="gutter-row" span={6}>
                        <Form.Item label="申请人">
                            <Select>
                                <Select.Option value="demo">Demo</Select.Option>
                            </Select>
                        </Form.Item>
                    </Col>
                    <Col className="gutter-row" span={6}>
                        <Form.Item label="对方团队长">
                            <Select>
                                <Select.Option value="demo">Demo</Select.Option>
                            </Select>
                        </Form.Item>
                    </Col>
                </Row>
                <Row gutter={12}>
                    <Col className="gutter-row" span={6}>
                        <Form.Item label="申请部门">
                            <Select>
                                <Select.Option value="demo">Demo</Select.Option>
                            </Select>
                        </Form.Item>
                    </Col>
                    <Col className="gutter-row" span={6}>
                        <Form.Item label="对方部门">
                            <Select>
                                <Select.Option value="demo">Demo</Select.Option>
                            </Select>
                        </Form.Item>
                    </Col>
                </Row>
                <Row gutter={12}>
                    <Col className="gutter-row" span={6}>
                        <Form.Item label="申请团队">
                            <Select>
                                <Select.Option value="demo">Demo</Select.Option>
                            </Select>
                        </Form.Item>
                    </Col>
                    <Col className="gutter-row" span={6}>
                        <Form.Item label="对方团队">
                            <Select>
                                <Select.Option value="demo">Demo</Select.Option>
                            </Select>
                        </Form.Item>
                    </Col>
                </Row>
                <Row gutter={12}>
                    <Col className="gutter-row" span={6}>
                        <Form.Item label="申请岗位">
                            <Select>
                                <Select.Option value="demo">Demo</Select.Option>
                            </Select>
                        </Form.Item>
                    </Col>
                    <Col className="gutter-row" span={6}>
                        <Form.Item label="对方岗位">
                            <Select>
                                <Select.Option value="demo">Demo</Select.Option>
                            </Select>
                        </Form.Item>
                    </Col>
                </Row>
                <Row gutter={12}>
                    <Col className="gutter-row" span={6}>
                        <Form.Item label="申请岗位职级">
                            <Select>
                                <Select.Option value="demo">Demo</Select.Option>
                            </Select>
                        </Form.Item>
                    </Col>
                    <Col className="gutter-row" span={6}>
                        <Form.Item label="对方岗位职级">
                            <Select>
                                <Select.Option value="demo">Demo</Select.Option>
                            </Select>
                        </Form.Item>
                    </Col>
                </Row>
                <Row gutter={12}>
                    <Col className="gutter-row" span={6}>
                        <Form.Item label="申请岗位地区">
                            <Select>
                                <Select.Option value="demo">Demo</Select.Option>
                            </Select>
                        </Form.Item>
                    </Col>
                    <Col className="gutter-row" span={6}>
                        <Form.Item label="对方岗位地区">
                            <Select>
                                <Select.Option value="demo">Demo</Select.Option>
                            </Select>
                        </Form.Item>
                    </Col>
                </Row>
                <Row style ={{marginLeft:-174}} gutter={14}>
                    <Col className="gutter-row" span={12}>
                        <Form.Item label="调用说明">
                            <TextArea rows={4} />
                        </Form.Item>
                    </Col>
                </Row>
                <div style={{display:'flex',flexDirection:'row',justifyContent:'space-between',width:140,marginLeft:130}}>
                <Button type="primary">
                    发起
                </Button>
                <Button>
                    重置
                </Button>
                </div>
            </Form>
        </Card >
    )
};
