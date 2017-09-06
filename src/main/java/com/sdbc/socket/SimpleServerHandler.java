package com.sdbc.socket;

import java.io.File;
import java.io.FileWriter;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;

public class SimpleServerHandler extends ChannelInboundHandlerAdapter {

	@Override
	public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {
		System.out.println("SimpleServerHandler.channelRead");
		ByteBuf result = (ByteBuf) msg;
		byte[] result1 = new byte[result.readableBytes()];
		result.readBytes(result1);
		String resultStr = new String(result1, "UTF-8");
		System.out.println("Client said:" + resultStr);

		File loanRegisterlog = new File("D://fabric-java-sdk//loanregisterlog.txt");
//		File loanRegisterlog = new File("/sdbc/doc/loanregisterlog");
		if (!loanRegisterlog.exists()) {// 如果文件不存在,则新建.
			File parentDir = new File(loanRegisterlog.getParent());
			if (!parentDir.exists()) {// 如果所在目录不存在,则新建.
				parentDir.mkdirs();
			}
			loanRegisterlog.createNewFile();
		}
		FileWriter writer = new FileWriter(loanRegisterlog);
		writer.write(resultStr);
		writer.close();
		System.out.println("对象保存完毕。"+resultStr);
		// 处理返回数据，根据类型执行相应操作
		result.release();

		String response = "收到";
		ByteBuf encoded = ctx.alloc().buffer(4 * response.length());
		encoded.writeBytes(response.getBytes());
		ctx.write(encoded);
		// ctx.flush();
	}

	@Override
	public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
		cause.printStackTrace();
		ctx.close();
	}

	@Override
	public void channelReadComplete(ChannelHandlerContext ctx) throws Exception {
		ctx.flush();
	}

}
