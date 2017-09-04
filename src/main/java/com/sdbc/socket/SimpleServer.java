package com.sdbc.socket;

import io.netty.bootstrap.ServerBootstrap;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelFuture;  
import io.netty.channel.ChannelInitializer;  
import io.netty.channel.ChannelOption;  
import io.netty.channel.EventLoopGroup;  
import io.netty.channel.nio.NioEventLoopGroup;  
import io.netty.channel.socket.SocketChannel;  
import io.netty.channel.socket.nio.NioServerSocketChannel;
import io.netty.handler.codec.DelimiterBasedFrameDecoder;  
  

public class SimpleServer {  
    private int port;  
  
    public SimpleServer(int port) {  
        this.port = port;  
    }  
  
    public void run() throws Exception {  
        EventLoopGroup bossGroup = new NioEventLoopGroup();   
        EventLoopGroup workerGroup = new NioEventLoopGroup();  
        final ByteBuf delimiter = Unpooled.copiedBuffer("</Transaction>".getBytes());
        
        
        try {  
            ServerBootstrap b = new ServerBootstrap();   
            b.group(bossGroup, workerGroup)  
                .channel(NioServerSocketChannel.class)  
                .childHandler(new ChannelInitializer<SocketChannel>() {   
                        @Override  
                        public void initChannel(SocketChannel ch) throws Exception {  
                            // 注锟斤拷handler  
                            ch.pipeline().addLast("framer", new DelimiterBasedFrameDecoder(65535,delimiter));    
                            ch.pipeline().addLast(new SimpleServerHandler());  
                        }  
                    })  
                .option(ChannelOption.SO_BACKLOG, 1024)  //指锟斤拷锟斤拷锟阶接匡拷锟脚队碉拷锟斤拷锟斤拷锟斤拷痈锟斤拷锟� 
                .childOption(ChannelOption.SO_KEEPALIVE, true);   
  
            ChannelFuture f = b.bind(port).sync();  
            f.channel().closeFuture().sync();  
        } finally {  
            workerGroup.shutdownGracefully();  
            bossGroup.shutdownGracefully();  
        }  
    }  
      
//    public static void main(String[] args) throws Exception {  
//        new SimpleServer(9990).run();  
//    }  
}  