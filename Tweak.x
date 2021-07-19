#import "Cosmic/libCosmic.h"

@interface PLPlatterHeaderContentView : UIView
@end
@interface NCNotificationShortLookView : UIView
@end

%hook PLPlatterHeaderContentView
	-(void)layoutSubviews
	{
		if ([self.superview isKindOfClass:%c(NCNotificationShortLookView)])
		{
			self.superview.layer.cornerRadius = 13;
			self.superview.clipsToBounds = YES;
			if (@available(iOS 13.0, *)) { self.superview.layer.cornerCurve = kCACornerCurveContinuous; } else { self.superview.layer.continuousCorners = YES; }
			self.backgroundColor = [UIColor colorWithRed: 0.00 green: 0.00 blue: 0.00 alpha: 0.30];
		}
		
		%orig;
	}
%end