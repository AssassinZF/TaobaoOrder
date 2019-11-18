enum OrderStatus {
  waitePay,//代付款
  emitted,//已发货
  finished,//完成
}

class OrderModel {
  String orderNo;
  String createTime;
  String orderName;
  
  OrderModel({
    this.orderNo,
    this.orderName,
    this.createTime
  });
}