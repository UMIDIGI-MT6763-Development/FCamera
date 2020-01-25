.class public Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;
.super Ljava/lang/Object;
.source "FacebeautyAdjustManager.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView$OnPickerListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MAX_ITEMS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "[TYD_DEBUG]FacebeautyAdjustManager"


# instance fields
.field private isShownDegree:Z

.field private mAdjustCtrl:Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;

.field mContext:Lcom/freeme/camera/CameraActivity;

.field private mCurrentItem:I

.field private mDegree:Landroid/widget/TextView;

.field private mDegreeIv:Landroid/widget/ImageView;

.field mDegreeView:Landroid/widget/LinearLayout;

.field mDegreelayout:Landroid/view/ViewGroup;

.field mFaceBeautyViewLayout:Landroid/widget/RelativeLayout;

.field private mFaceBeautyViewMarginNormal:I

.field private mFaceBeautyViewMarginPlus:I

.field mFacebeautyLayout:Landroid/widget/LinearLayout;

.field private mFacetitles:[Ljava/lang/String;

.field private mIsExited:Z

.field mLayout:Landroid/view/ViewGroup;

.field mListLayout:Landroid/view/ViewGroup;

.field private mModeBtnDown:Landroid/widget/TextView;

.field private mPanel:Landroid/view/ViewGroup;

.field private mPopDownDrawable:Landroid/graphics/drawable/Drawable;

.field private mPopUpDrawable:Landroid/graphics/drawable/Drawable;

.field private mScreenRatio:I

.field private mSettingList:Landroid/view/ViewGroup;

.field private mShowingCtrl:Z

.field modeLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/freeme/camera/CameraActivity;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mShowingCtrl:Z

    const/4 v1, -0x2

    iput v1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mCurrentItem:I

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mIsExited:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->isShownDegree:Z

    const/16 v2, 0x360

    iput v2, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFaceBeautyViewMarginPlus:I

    const/16 v2, 0x2a6

    iput v2, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFaceBeautyViewMarginNormal:I

    iput v0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mScreenRatio:I

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mLayout:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mContext:Lcom/freeme/camera/CameraActivity;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mContext:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/freeme/camera/CameraActivity;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/IAppUi;->getFaceBeautyViewLayout()Landroid/widget/RelativeLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFaceBeautyViewLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mContext:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/freeme/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080225

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mPopDownDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mPopDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mPopDownDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mContext:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/freeme/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080224

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mPopUpDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mPopUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mPopUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p2}, Lcom/freeme/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mSettingList:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mSettingList:Landroid/view/ViewGroup;

    const v4, 0x7f0900bb

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFacebeautyLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mSettingList:Landroid/view/ViewGroup;

    const v4, 0x7f09010c

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mListLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mSettingList:Landroid/view/ViewGroup;

    const v4, 0x7f090003

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mDegreelayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mSettingList:Landroid/view/ViewGroup;

    const v4, 0x7f09012d

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->modeLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mDegreelayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->modeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mSettingList:Landroid/view/ViewGroup;

    const v4, 0x7f090086

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mDegreeView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mSettingList:Landroid/view/ViewGroup;

    const v4, 0x7f090002

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mDegree:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mSettingList:Landroid/view/ViewGroup;

    const v4, 0x7f090087

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mDegreeIv:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mSettingList:Landroid/view/ViewGroup;

    const v4, 0x7f09012b

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mModeBtnDown:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xe

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mContext:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/freeme/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v4, v1}, Lcom/freeme/camera/common/utils/CameraUtil;->determineRatio(II)I

    move-result v1

    iput v1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mScreenRatio:I

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mContext:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/freeme/camera/CameraActivity;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/IAppUi;->getShutterRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/freeme/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mDegreeView:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x4

    new-array v1, p2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mContext:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/freeme/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0161

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mContext:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/freeme/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0163

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mContext:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/freeme/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0f015c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v1, v6

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mContext:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/freeme/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0f015b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v1, v7

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFacetitles:[Ljava/lang/String;

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mContext:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/freeme/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f08010d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mContext:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/freeme/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f080110

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, p2, v5

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mContext:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/freeme/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f08010a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, p2, v6

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mContext:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/freeme/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f080104

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, p2, v7

    move v1, v0

    :goto_0
    iget-object v4, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFacetitles:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    const v4, 0x7f0b004a

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mListLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0901e3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f09010e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFacetitles:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v5, p2, v1

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mListLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$1;

    invoke-direct {v5, p0}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$1;-><init>(Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mModeBtnDown:Landroid/widget/TextView;

    new-instance v0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$2;-><init>(Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFacetitles:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->isShownDegree:Z

    return p0
.end method

.method static synthetic access$102(Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->isShownDegree:Z

    return p1
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFaceBeautyViewMarginNormal:I

    return p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mPopDownDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mModeBtnDown:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFaceBeautyViewMarginPlus:I

    return p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mPopUpDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private static normalize(F)F
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public static setFilterParams(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V
    .locals 6

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->getVfbParamsLevel(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->normalize(F)F

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->getVfbParamsLevel(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->normalize(F)F

    move-result v1

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->getVfbParamsLevel(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->normalize(F)F

    move-result v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->getParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getArgs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    const-string v5, "smoothing"

    invoke-virtual {v4, v5}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->setPrecentValue(F)V

    goto :goto_0

    :cond_0
    const-string v5, "whitening"

    invoke-virtual {v4, v5}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->setPrecentValue(F)V

    goto :goto_0

    :cond_1
    const-string v5, "eyeSize"

    invoke-virtual {v4, v5}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v2}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->setPrecentValue(F)V

    goto :goto_0

    :cond_2
    const-string v5, "chinSize"

    invoke-virtual {v4, v5}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->setPrecentValue(F)V

    goto :goto_0

    :cond_3
    const-string v5, "mixied"

    invoke-virtual {v4, v5}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->submitParameter()V

    :cond_5
    return-void
.end method

.method private show(Z)V
    .locals 11

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mListLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0901e3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mListLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFacetitles:[Ljava/lang/String;

    array-length v4, v4

    const/4 v9, 0x1

    sub-int/2addr v4, v9

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mListLayout:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFacetitles:[Ljava/lang/String;

    array-length v5, v5

    sub-int/2addr v5, v9

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v2, v3, v2

    const-string v3, "sunny"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show mCurrentItem=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mCurrentItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mContext:Lcom/freeme/camera/CameraActivity;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Lcom/freeme/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mAdjustCtrl:Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;

    if-nez v3, :cond_0

    new-instance v10, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mContext:Lcom/freeme/camera/CameraActivity;

    iget v5, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mCurrentItem:I

    move-object v3, v10

    move-object v6, p0

    move v7, v0

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;-><init>(Landroid/content/Context;ILcom/freeme/camera/feature/mode/beautyface/SettingAdjustView$OnPickerListener;II)V

    iput-object v10, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mAdjustCtrl:Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mDegreelayout:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mAdjustCtrl:Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;

    invoke-virtual {v4, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mAdjustCtrl:Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;

    new-instance v4, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$3;

    invoke-direct {v4, p0}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager$3;-><init>(Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;)V

    invoke-virtual {v3, v4}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mAdjustCtrl:Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;

    iget v4, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mCurrentItem:I

    invoke-virtual {v3, v4, v0, v2}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->initSlice(III)V

    iput-boolean v9, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mShowingCtrl:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mDegreelayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mAdjustCtrl:Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->show(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFaceBeautyViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFaceBeautyViewMarginPlus:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFaceBeautyViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mSettingList:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public func(I)V
    .locals 3

    const-string v0, "sunny"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "mCurrentItem="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mCurrentItem:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mListLayout:Landroid/view/ViewGroup;

    iget v0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mCurrentItem:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    iget p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mCurrentItem:I

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->saveLevelIndex(II)V

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mContext:Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object p1

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->setFilterParams(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    return-void
.end method

.method public hide(ZI)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mListLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mShowingCtrl:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mAdjustCtrl:Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0901e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mListLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f09010e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mDegreelayout:Landroid/view/ViewGroup;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mAdjustCtrl:Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mShowingCtrl:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFaceBeautyViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget p2, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFaceBeautyViewMarginNormal:I

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFaceBeautyViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method

.method public removeView(Landroid/view/ViewGroup;)V
    .locals 3

    const-string v0, "sunny"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rootView=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "mSettingList=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mSettingList:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mAdjustCtrl:Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFaceBeautyViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFaceBeautyViewMarginNormal:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFaceBeautyViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setPluginVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFacebeautyLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mFacebeautyLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public switcher(I)V
    .locals 4

    iget v0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mCurrentItem:I

    const/4 v1, -0x2

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mListLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mListLayout:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mCurrentItem:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f09010e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    iput p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mCurrentItem:I

    invoke-direct {p0, v2}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->show(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mDegreelayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mCurrentItem:I

    invoke-virtual {p0, v2, p1}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->hide(ZI)V

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->mCurrentItem:I

    invoke-direct {p0, v2}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->show(Z)V

    :goto_0
    return-void
.end method
