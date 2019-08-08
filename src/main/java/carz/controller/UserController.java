package carz.controller;


 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import carz.util.CalculatorUtil;
import carz.util.SendmailUtil;
import carz.util.VerifyCodeUtil;

import java.io.File;
import java.io.FileInputStream;
import java.util.*;


public class UserController{
	/**
     * 发送自由编辑的邮件
     *
     * @param toEmailAddress 收件人邮箱
     * @param emailTitle 邮件主题
     * @param emailContent 邮件内容
     * @return
     */
	public String sendEmailOwn(String toEmailAddress, String emailTitle, String emailContent){
		try{
			//发送邮件
			SendmailUtil.sendEmail(toEmailAddress, emailTitle, emailContent);
			return CalculatorUtil.getJSONString(0);
			}catch(Exception e){
				return CalculatorUtil.getJSONString(1,"邮件发送失败！");
				}
		}
	
	/**
     * 发送系统验证
     *
     * @param toEmailAddress 收件人邮箱
     * @return
     */
	public String sendEmailSystem(String toEmailAddress){
		try{
			//生成验证码
			String verifyCode = VerifyCodeUtil.generateVerifyCode(6);
			
			//邮件主题
			String emailTitle = "【牛大了】邮箱验证";
			
			//邮件内容
			String emailContent = "您正在进行【牛大了】邮箱验证，您的验证码为：" + verifyCode + "，请于10分钟内完成验证！";
			
			//发送邮件
			SendmailUtil.sendEmail(toEmailAddress, emailTitle, emailContent);
			System.out.println("******************************");
			System.out.println(CalculatorUtil.getJSONString(0,verifyCode));
			return CalculatorUtil.getJSONString(0,verifyCode);
			}catch(Exception e){
				return CalculatorUtil.getJSONString(1,"邮件发送失败！");
				}
		}
	}