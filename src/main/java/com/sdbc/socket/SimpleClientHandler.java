package com.sdbc.socket;

import io.netty.buffer.ByteBuf;  
import io.netty.channel.ChannelHandlerContext;  
import io.netty.channel.ChannelInboundHandlerAdapter;  
  
public class SimpleClientHandler extends ChannelInboundHandlerAdapter {  
  
    @Override  
    public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {  
        System.out.println("SimpleClientHandler.channelRead");    
        ByteBuf result = (ByteBuf) msg;    
        byte[] result1 = new byte[result.readableBytes()];    
        result.readBytes(result1);    
        System.out.println("Server said:" + new String(result1));    
        result.release();    
    }  
  
    @Override  
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {  
        // �������쳣�͹ر�����  
        cause.printStackTrace();  
        ctx.close();  
    }  
  
      
    // ���ӳɹ�����server������Ϣ    
    @Override    
    public void channelActive(ChannelHandlerContext ctx) throws Exception {  

		String value_l_q="<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
				+ "<Transaction>"
				+ "<HEAD><SEQ_NO>1495781249650842</SEQ_NO>"
				+ "<SERVICE_ID>WDGL0012</SERVICE_ID>"
				+ "<CHANNEL_ID>8118</CHANNEL_ID>"
				+ "<BANK_CODE>9901</BANK_CODE>"
				+ "<USER_ID/>"
				+ "<AUTH_ID/>"
				+ "<TRAN_DATE>20170526</TRAN_DATE>"
				+ "<TRAN_TIME>144729</TRAN_TIME>"
				+ "<TRAN_TERM/>"
				+ "<EXT_HEAD>"
				+ "<MAC_INDEX/>"
				+ "<MAC_VALUE/>"
				+ "</EXT_HEAD></HEAD>"
				+ "<BODY>"
				+ "<reqDateTimes>20170526144729</reqDateTimes>"
				+ "<bizSequenceId>DASD1AS2D12AS3D12S1D23ASD12S3A</bizSequenceId>"
				+ "<version>V1.0</version>"
				+ "<bank_id>1005</bank_id>"
				+ "<remark/>"
				+ "<extension/>"
				+ "<return_url>172.16.10.111:8965</return_url>"
				+ "<type>01</type>"
				+ "<query_condition>"
				+ "<channel>JS_BANK</channel>"
				+ "<dealdate>20170605</dealdate>"
				+ "<name></name>"
				+ "<billNo>2016025015856936</billNo>"
				+ "</query_condition>"
				+ "</BODY></Transaction>";
		
		String value_r_q="<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
				+ "<Transaction>"
				+ "<HEAD><SEQ_NO>1495781249650842</SEQ_NO>"
				+ "<SERVICE_ID>WDGL0012</SERVICE_ID>"
				+ "<CHANNEL_ID>8118</CHANNEL_ID>"
				+ "<BANK_CODE>9901</BANK_CODE>"
				+ "<USER_ID/>"
				+ "<AUTH_ID/>"
				+ "<TRAN_DATE>20170526</TRAN_DATE>"
				+ "<TRAN_TIME>144729</TRAN_TIME>"
				+ "<TRAN_TERM/>"
				+ "<EXT_HEAD>"
				+ "<MAC_INDEX/>"
				+ "<MAC_VALUE/>"
				+ "</EXT_HEAD></HEAD>"
				+ "<BODY>"
				+ "<reqDateTimes>20170526144729</reqDateTimes>"
				+ "<bizSequenceId>DASD1AS2D12AS3D12S1D23ASD12S3A</bizSequenceId>"
				+ "<version>V1.0</version>"
				+ "<bank_id>1005</bank_id>"
				+ "<remark/>"
				+ "<extension/>"
				+ "<return_url>172.16.10.111:8965</return_url>"
				+ "<type>02</type>"
				+ "<query_condition>"
				+ "<channel>JS_BANK</channel>"
				+ "<dealdate>20170605</dealdate>"
				+ "<name></name>"
				+ "<billNo>2016025015856936</billNo>"
				+ "</query_condition>"
				+ "</BODY></Transaction>";	
		//改为从session中获取查询类型
		
        String msg = value_l_q;    
        ByteBuf encoded = ctx.alloc().buffer(4 * msg.length());    
        encoded.writeBytes(msg.getBytes());    
        ctx.write(encoded);    
        ctx.flush();    
    }    
}  