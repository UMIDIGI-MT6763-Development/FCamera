.class public Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;
.super Landroid/widget/LinearLayout;
.source "SettingAdjustView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar$VerticalSeekBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView$OnPickerListener;
    }
.end annotation


# static fields
.field private static final DELAY_HIDE_MS:I = 0x3e8

.field private static final FACTOR:I = 0x14

.field private static final MSG_DELAY_HIDE:I = 0x0

.field private static final SHOW_TITLE_ITEM_MAX:I = 0x8

.field private static final SLICE_MAX:I = 0x9

.field public static final TYPE_SHOW_LABEL:I = 0x1

.field public static final TYPE_SHOW_TITLES:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrProgress:I

.field private mCurrTitleView:Landroid/view/View;

.field private mCurrentSlicePos:I

.field private mHandler:Landroid/os/Handler;

.field private mItemContainerWidth:I

.field private mLabelView:Landroid/widget/TextView;

.field private mListener:Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView$OnPickerListener;

.field private mPref:Landroid/preference/ListPreference;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSliceLeftMargin:I

.field private mSliceWidth:I

.field private mTextRoot:Landroid/widget/LinearLayout;

.field private mTextSize:I

.field private mTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I

.field private mindex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/freeme/camera/feature/mode/beautyface/SettingAdjustView$OnPickerListener;II)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTitles:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mindex:I

    new-instance v0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView$1;-><init>(Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mListener:Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView$OnPickerListener;

    iput p2, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mCurrentSlicePos:I

    invoke-direct {p0, p4, p5}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->inflateView(II)V

    invoke-virtual {p0, p2, p4, p5}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->initSlice(III)V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mCurrentSlicePos:I

    return p0
.end method

.method static synthetic access$002(Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mCurrentSlicePos:I

    return p1
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTextRoot:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mindex:I

    return p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->setSeekBar(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->onTap()Z

    move-result p0

    return p0
.end method

.method private findSlicePos()I
    .locals 3

    iget v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mCurrProgress:I

    div-int/lit8 v1, v0, 0x14

    rem-int/lit8 v0, v0, 0x14

    const/16 v2, 0xa

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :goto_0
    return v1
.end method

.method private handleCurrTitle(I)V
    .locals 2

    iget v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mCurrentSlicePos:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTitles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTitles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    :goto_0
    return-void

    :pswitch_1
    iget v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mCurrentSlicePos:I

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTextRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTextRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mCurrTitleView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mCurrTitleView:Landroid/view/View;

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private inflateTextRoot(II)V
    .locals 13

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v3, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mType:I

    const/16 v4, 0x11

    const/4 v5, -0x2

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    new-instance p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mLabelView:Landroid/widget/TextView;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTitles:Ljava/util/List;

    iget v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mCurrentSlicePos:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTextRoot:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p2, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :pswitch_1
    iget-object v3, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTitles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v6, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    iget v12, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mSliceWidth:I

    invoke-direct {v11, v5, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v10, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    :cond_1
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    iget v12, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mSliceWidth:I

    invoke-direct {v11, v12, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v10, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_2
    iget-object v10, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f060038

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget v10, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTextSize:I

    int-to-float v10, v10

    invoke-virtual {v8, v2, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-nez v6, :cond_2

    invoke-virtual {v7, p1, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3

    :cond_2
    iget-object v10, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTitles:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v1

    if-ne v6, v10, :cond_3

    iput p2, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v9, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    :goto_3
    iget v10, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mCurrentSlicePos:I

    if-ne v10, v6, :cond_4

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iput-object v8, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mCurrTitleView:Landroid/view/View;

    :cond_4
    invoke-virtual {v9, v8, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTextRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v6, v6, 0x1

    new-instance v7, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView$2;

    invoke-direct {v7, p0}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView$2;-><init>(Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;)V

    invoke-virtual {v9, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_5
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private inflateView(II)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b008f

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTextRoot:Landroid/widget/LinearLayout;

    const v1, 0x7f09019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Landroid/widget/SeekBar;->setPadding(IIII)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080239

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mSeekBar:Landroid/widget/SeekBar;

    instance-of p2, p1, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;

    invoke-virtual {p1, p0}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->setListener(Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar$VerticalSeekBarListener;)V

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private isForceTap()Z
    .locals 1

    iget v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mCurrentSlicePos:I

    const/4 v0, 0x0

    return v0
.end method

.method private onTap()Z
    .locals 2

    iget v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mCurrentSlicePos:I

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mListener:Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView$OnPickerListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView$OnPickerListener;->func(I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private setSeekBar(I)V
    .locals 1

    mul-int/lit8 p1, p1, 0x14

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public getMode(II)I
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0160

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f015e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1
    iget-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0f015f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    const/4 p2, 0x4

    const/4 v1, 0x3

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, p2

    goto :goto_0

    :pswitch_4
    move v0, p2

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :pswitch_6
    move v0, v1

    goto :goto_0

    :pswitch_7
    iget-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0f015d

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    const/4 p2, 0x2

    packed-switch p1, :pswitch_data_2

    goto :goto_0

    :pswitch_8
    move v0, p2

    goto :goto_0

    :pswitch_9
    move v0, p2

    goto :goto_0

    :pswitch_a
    move v0, p2

    goto :goto_0

    :pswitch_b
    move v0, v2

    goto :goto_0

    :pswitch_c
    move v0, p2

    goto :goto_0

    :pswitch_d
    iget-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    packed-switch p1, :pswitch_data_3

    goto :goto_0

    :pswitch_e
    move v0, v2

    goto :goto_0

    :pswitch_f
    move v0, v2

    goto :goto_0

    :pswitch_10
    move v0, v2

    :goto_0
    :pswitch_11
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_11
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method public hide()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->setVisibility(I)V

    return-void
.end method

.method public hide(Z)V
    .locals 3

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public initSlice(III)V
    .locals 8

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTitles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mindex:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTextRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080239

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "0"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "1"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "2"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "3"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "4"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "5"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0160

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    iget-object v6, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f015d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    iget-object v6, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f015f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    iget-object v6, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f015e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    array-length v5, v0

    const/16 v6, 0x9

    if-gt v5, v6, :cond_6

    const-string v5, "sun"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCurrentSlicePos=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mSeekBar:Landroid/widget/SeekBar;

    instance-of p1, p1, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;

    if-eqz p1, :cond_0

    array-length p1, v1

    sub-int/2addr p1, v3

    :goto_0
    if-ltz p1, :cond_3

    aget-object v0, v1, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTitles:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_1
    array-length v0, v1

    if-ge p1, v0, :cond_3

    aget-object v0, v1, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTitles:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mSeekBar:Landroid/widget/SeekBar;

    instance-of p1, p1, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;

    if-eqz p1, :cond_2

    array-length p1, v0

    sub-int/2addr p1, v3

    :goto_2
    if-ltz p1, :cond_3

    aget-object v1, v0, p1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTitles:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_2
    move p1, v2

    :goto_3
    array-length v1, v0

    if-ge p1, v1, :cond_3

    aget-object v1, v0, p1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTitles:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTitles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x8

    if-le p1, v0, :cond_4

    iput v3, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mType:I

    goto :goto_4

    :cond_4
    iput v2, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mType:I

    :goto_4
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07012f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mSliceWidth:I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070130

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTextSize:I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07012d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mItemContainerWidth:I

    iget p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mItemContainerWidth:I

    iget v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mSliceWidth:I

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTitles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTitles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    div-int/2addr p1, v0

    iput p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mSliceLeftMargin:I

    invoke-direct {p0, p2, p3}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->inflateTextRoot(II)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTitles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v4, :cond_5

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mTitles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v3

    mul-int/lit8 p1, p1, 0x14

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setMax(I)V

    iget p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mindex:I

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->getLevelIndex(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->setSeekBar(I)V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "error size < 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "the item count can not over max (9)!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    iput p2, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mCurrProgress:I

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->findSlicePos()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->handleCurrTitle(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->findSlicePos()I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mCurrentSlicePos:I

    const-string p1, "sun"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentSlicePos=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mCurrentSlicePos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mindex:I

    iget v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mCurrentSlicePos:I

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/mode/beautyface/FaceBeautyUtil;->saveLevelIndex(II)V

    iget p1, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mCurrentSlicePos:I

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->setSeekBar(I)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->onTap()Z

    return-void
.end method

.method public onVerticalSeekBarStopTrackingTouch(Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;)V
    .locals 3

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->findSlicePos()I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mCurrentSlicePos:I

    iget v0, p0, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->mCurrentSlicePos:I

    mul-int/lit8 v0, v0, 0x14

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->setProgress(I)V

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/freeme/camera/feature/mode/beautyface/VerticalSeekBar;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->onTap()Z

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    return-void
.end method

.method public show(Z)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/mode/beautyface/SettingAdjustView;->setVisibility(I)V

    return-void
.end method
