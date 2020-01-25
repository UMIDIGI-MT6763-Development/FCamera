.class public Lcom/freeme/elementscenter/dc/ui/TabWidget;
.super Landroid/widget/LinearLayout;
.source "TabWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/elementscenter/dc/ui/TabWidget$OnTabSelectedListener;
    }
.end annotation


# instance fields
.field private mCurPosition:I

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mIndicatorH:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnTabSelectedListener:Lcom/freeme/elementscenter/dc/ui/TabWidget$OnTabSelectedListener;

.field private mTabNum:I

.field private mTabSelector:Landroid/widget/ImageView;

.field private mTabWidth:I

.field private mTabsLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/elementscenter/dc/ui/TabWidget;)I
    .locals 0

    iget p0, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mCurPosition:I

    return p0
.end method

.method static synthetic access$002(Lcom/freeme/elementscenter/dc/ui/TabWidget;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mCurPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/freeme/elementscenter/dc/ui/TabWidget;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mTabsLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/elementscenter/dc/ui/TabWidget;)Lcom/freeme/elementscenter/dc/ui/TabWidget$OnTabSelectedListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mOnTabSelectedListener:Lcom/freeme/elementscenter/dc/ui/TabWidget$OnTabSelectedListener;

    return-object p0
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/freeme/elementscenter/R$dimen;->tabwidget_indicator_h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mIndicatorH:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mTabsLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mTabsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mTabSelector:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mTabSelector:Landroid/widget/ImageView;

    sget v2, Lcom/freeme/elementscenter/R$drawable;->tabwidet_page_selected:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mTabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addTab(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/freeme/elementscenter/R$layout;->tab_item:I

    iget-object v4, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mTabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mTabNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v2, Lcom/freeme/elementscenter/R$id;->tabText:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/freeme/elementscenter/dc/ui/TabWidget$1;

    invoke-direct {p1, p0}, Lcom/freeme/elementscenter/dc/ui/TabWidget$1;-><init>(Lcom/freeme/elementscenter/dc/ui/TabWidget;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p1, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mTabNum:I

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    iget p1, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mTabNum:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mTabNum:I

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mTabNum:I

    div-int/2addr p1, v2

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mTabWidth:I

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mTabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mTabSelector:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->removeView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mTabWidth:I

    iget v1, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mIndicatorH:I

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mTabSelector:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/freeme/elementscenter/dc/ui/TabWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public selectorTanslationX(IF)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mTabSelector:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    mul-int/2addr v1, p1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mTabSelector:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_0

    iget p2, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mCurPosition:I

    if-eq p2, p1, :cond_0

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mTabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object p2, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mTabsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mCurPosition:I

    :cond_0
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/freeme/elementscenter/dc/ui/TabWidget$OnTabSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/TabWidget;->mOnTabSelectedListener:Lcom/freeme/elementscenter/dc/ui/TabWidget$OnTabSelectedListener;

    return-void
.end method
