//
//  User_ViewController.h
//  PetGrow
//
//  Created by 妳的小可愛已上線 on 2019/4/27.
//  Copyright © 2019 妳的小可愛已上線. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface User_ViewController : UIViewController<UINavigationControllerDelegate,UIImagePickerControllerDelegate>
{
    UILabel *Name;
    UIImageView *Pet;
}
@end

NS_ASSUME_NONNULL_END
