package com.sdbc.socket;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.Principal;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Locale;
import java.util.Map;

import javax.servlet.AsyncContext;
import javax.servlet.DispatcherType;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import net.sf.json.util.WebUtils;

public class SimpleClientHandler extends ChannelInboundHandlerAdapter {
	String msg;

	public SimpleClientHandler(String msg) {
		this.msg = msg;
	}

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

	@Override
	public void channelActive(ChannelHandlerContext ctx) throws Exception {

		// String value_l_q="<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
		// + "<Transaction>"
		// + "<HEAD><SEQ_NO>1495781249650842</SEQ_NO>"
		// + "<SERVICE_ID>WDGL0012</SERVICE_ID>"
		// + "<CHANNEL_ID>8118</CHANNEL_ID>"
		// + "<BANK_CODE>9901</BANK_CODE>"
		// + "<USER_ID/>"
		// + "<AUTH_ID/>"
		// + "<TRAN_DATE>20170526</TRAN_DATE>"
		// + "<TRAN_TIME>144729</TRAN_TIME>"
		// + "<TRAN_TERM/>"
		// + "<EXT_HEAD>"
		// + "<MAC_INDEX/>"
		// + "<MAC_VALUE/>"
		// + "</EXT_HEAD></HEAD>"
		// + "<BODY>"
		// + "<reqDateTimes>20170526144729</reqDateTimes>"
		// + "<bizSequenceId>DASD1AS2D12AS3D12S1D23ASD12S3A</bizSequenceId>"
		// + "<version>V1.0</version>"
		// + "<bank_id>1005</bank_id>"
		// + "<remark/>"
		// + "<extension/>"
		// + "<return_url>172.16.10.111:8965</return_url>"
		// + "<type>01</type>"
		// + "<query_condition>"
		// + "<channel>JS_BANK</channel>"
		// + "<dealdate>20170605</dealdate>"
		// + "<name></name>"
		// + "<billNo>2016025015856936</billNo>"
		// + "</query_condition>"
		// + "</BODY></Transaction>";
		//
		// String value_r_q="<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
		// + "<Transaction>"
		// + "<HEAD><SEQ_NO>1495781249650842</SEQ_NO>"
		// + "<SERVICE_ID>WDGL0012</SERVICE_ID>"
		// + "<CHANNEL_ID>8118</CHANNEL_ID>"
		// + "<BANK_CODE>9901</BANK_CODE>"
		// + "<USER_ID/>"
		// + "<AUTH_ID/>"
		// + "<TRAN_DATE>20170526</TRAN_DATE>"
		// + "<TRAN_TIME>144729</TRAN_TIME>"
		// + "<TRAN_TERM/>"
		// + "<EXT_HEAD>"
		// + "<MAC_INDEX/>"
		// + "<MAC_VALUE/>"
		// + "</EXT_HEAD></HEAD>"
		// + "<BODY>"
		// + "<reqDateTimes>20170526144729</reqDateTimes>"
		// + "<bizSequenceId>DASD1AS2D12AS3D12S1D23ASD12S3A</bizSequenceId>"
		// + "<version>V1.0</version>"
		// + "<bank_id>1005</bank_id>"
		// + "<remark/>"
		// + "<extension/>"
		// + "<return_url>172.16.10.111:8965</return_url>"
		// + "<type>02</type>"
		// + "<query_condition>"
		// + "<channel>JS_BANK</channel>"
		// + "<dealdate>20170605</dealdate>"
		// + "<name></name>"
		// + "<billNo>2016025015856936</billNo>"
		// + "</query_condition>"
		// + "</BODY></Transaction>";
		//
		// //改为从session中获取查询类型

		ByteBuf encoded = ctx.alloc().buffer(4 * msg.length());
		encoded.writeBytes(msg.getBytes());
		ctx.write(encoded);
		ctx.flush();
	}
}