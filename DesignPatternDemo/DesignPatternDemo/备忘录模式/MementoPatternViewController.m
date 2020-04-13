//
//  MementoPatternViewController.m
//  DesignPatternDemo
//
//  Created by KKWONG on 2020/4/13.
//  Copyright © 2020 KKWONG. All rights reserved.
//

#import "MementoPatternViewController.h"
#import "Originator.h"
#import "MementoManager.h"
#import "Memento.h"
@interface MementoPatternViewController ()
@property (weak, nonatomic) IBOutlet UITextField *versionTextField;
@property (weak, nonatomic) IBOutlet UITextView *contentTextView;
@property (nonatomic, strong) Originator *originator;
@property (nonatomic, strong) MementoManager *manager;
@end

@implementation MementoPatternViewController
/*
 备忘录模式（Memento Pattern）保存一个对象的某个状态，以便在适当的时候恢复对象。备忘录模式属于行为型模式。
 备忘录模式的作用是保存版本和会馆版本
 
 1.Memento备忘录对象，该对象保存了要保存的数据
 2.Originator 备忘录对象与备忘录管理对象的通信的桥梁
 3.MementoManager备忘录管理类，具有保存所有的备忘录和获取单个备忘录功能
 */


- (void)viewDidLoad {
    [super viewDidLoad];
    self.originator = [[Originator alloc] init];
    self.manager = [[MementoManager alloc] init];
}


- (IBAction)save {
    NSDictionary *dictionary = @{self.versionTextField.text : self.contentTextView.text};
    self.originator.dictionary = dictionary;
    Memento *memento = [self.originator saveMemento];
    [self.manager addMemento:memento];
}

- (IBAction)get {
    Memento *memeto = [self.manager getMementoWithVersion:self.versionTextField.text];
    [self.originator getContentFromMemento:memeto];
    self.contentTextView.text = self.originator.dictionary.allValues.firstObject;
}

@end
