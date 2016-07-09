//
//  ViewController.m
//  WebViewHtml
//
//  Created by 刘隆昌 on 14-12-22.
//  Copyright (c) 2014年 刘隆昌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIWebView * webView = [[UIWebView alloc] initWithFrame:CGRectMake(0,0,self.view.frame.size.width,self.view.frame.size.height)];
    [self.view addSubview:webView];
    webView.delegate = self;
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.baidu.com"]]];
    
    
    
    
    
}



-(void)webViewDidStartLoad:(UIWebView *)webView{
    
    
}


-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    
    
    NSString *js = @"document.body.innerHTML";
    NSString *pageSource = [webView stringByEvaluatingJavaScriptFromString:js];
  //  NSLog(@"pagesource:%@", pageSource);
    
    NSString * str;
    switch (navigationType) {
        case UIWebViewNavigationTypeLinkClicked:
            
            break;
            
        case UIWebViewNavigationTypeFormSubmitted:
            
            str = [webView stringByEvaluatingJavaScriptFromString:@"document.getElementById('kw').value"];
            NSLog(@"//// %@",str);

            
            
            break;
            
        default:
            break;
    }
    
    
    return YES;
}


-(void)webViewDidFinishLoad:(UIWebView *)webView{
    
    NSString *js0 = @"document.body.innerHTML";
    NSString *pageSource0 = [webView stringByEvaluatingJavaScriptFromString:js0];
   // NSLog(@"%@ pagesource:%@", [pageSource0 class],pageSource0);
    
    
    NSString *js = @"document.getElementById('head').innerHTML";
    NSString *pageSource = [webView stringByEvaluatingJavaScriptFromString:js];
    
    
    //NSLog(@"===pagesource:%@",pageSource);
    
 //   NSLog(@"1");
}


-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
