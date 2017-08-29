package com.sdbc.task;

import java.util.TimerTask;

import org.apache.log4j.Logger;

public class AutoUpdatedataTask extends TimerTask {
	 private static Logger log = Logger.getLogger(AutoUpdatedataTask.class);

	@Override
	public void run() {
		//System.out.println("发送请求**********巴拉巴拉");
		//执行每隔60秒定时发送请求，访问接口，同步数据
		String data = "";
		//判断server端是否开启;调用server端，获取返回数据
	}

}
