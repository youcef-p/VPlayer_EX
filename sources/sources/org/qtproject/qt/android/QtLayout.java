package org.qtproject.qt.android;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

/* JADX INFO: loaded from: classes.dex */
class QtLayout extends ViewGroup {
    QtLayout(Context context) {
        super(context);
    }

    QtLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    QtLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int measuredWidth;
        int measuredHeight;
        int childCount = getChildCount();
        measureChildren(i, i2);
        int iMax = 0;
        int iMax2 = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                if (childAt.getLayoutParams() instanceof LayoutParams) {
                    LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                    measuredWidth = layoutParams.x + childAt.getMeasuredWidth();
                    measuredHeight = layoutParams.y + childAt.getMeasuredHeight();
                } else {
                    measuredWidth = childAt.getMeasuredWidth();
                    measuredHeight = childAt.getMeasuredHeight();
                }
                iMax2 = Math.max(iMax2, measuredWidth);
                iMax = Math.max(iMax, measuredHeight);
            }
        }
        setMeasuredDimension(resolveSize(Math.max(iMax2, getSuggestedMinimumWidth()), i), resolveSize(Math.max(iMax, getSuggestedMinimumHeight()), i2));
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2, 0, 0);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int i6 = layoutParams.x;
                int i7 = layoutParams.y;
                childAt.layout(i6, i7, layoutParams.width == -1 ? i3 - i : childAt.getMeasuredWidth() + i6, layoutParams.height == -1 ? i4 - i2 : childAt.getMeasuredHeight() + i7);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    static class LayoutParams extends ViewGroup.LayoutParams {
        int x;
        int y;

        LayoutParams(int i, int i2, int i3, int i4) {
            super(i, i2);
            this.x = i3;
            this.y = i4;
        }

        LayoutParams(int i, int i2) {
            super(i, i2);
        }

        LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    void moveChild(View view, int i) {
        if (view == null || indexOfChild(view) == -1) {
            return;
        }
        detachViewFromParent(view);
        requestLayout();
        invalidate();
        attachViewToParent(view, i, view.getLayoutParams());
    }

    void setLayoutParams(View view, ViewGroup.LayoutParams layoutParams, boolean z) {
        if (view != null && checkLayoutParams(layoutParams)) {
            ViewParent parent = view.getParent();
            if (this == parent) {
                view.setLayoutParams(layoutParams);
                if (z) {
                    invalidate();
                    return;
                }
                return;
            }
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view);
            }
            addView(view, layoutParams);
        }
    }
}
