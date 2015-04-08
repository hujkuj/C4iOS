//  Copyright (c) 2015 C4. All rights reserved.

import QuartzCore

/**
Extension for CAShapeLayer that allows overriding the actions for specific properties.
*/
public class C4ShapeLayer: CAShapeLayer {
    public override func actionForKey(key: String!) -> CAAction! {
        if key == "lineWidth" {
            let animation = CABasicAnimation(keyPath: key)
            animation.fromValue = self.lineWidth
            return animation;
        }
        else if key == "strokeEnd" {
            let animation = CABasicAnimation(keyPath: key)
            animation.fromValue = self.strokeEnd
            return animation;
        }
        else if key == "strokeStart" {
            let animation = CABasicAnimation(keyPath: key)
            animation.fromValue = self.strokeStart
            return animation;
        }
        else if key == "path" {
            let animation = CABasicAnimation(keyPath: key)
            animation.fromValue = self.path
            return animation;
        }
        
        return super.actionForKey(key)
    }
}
