.class public Lcom/freeme/camera/feature/setting/focus/FocusViewController;
.super Ljava/lang/Object;
.source "FocusViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/focus/FocusViewController$MainHandler;
    }
.end annotation


# static fields
.field private static final AF_DATA_UNIT:I = 0x3

.field private static final COMMON_INFO_LENGTH:I = 0xc

.field private static final CONTINUOUS_FOCUS_VIEW_PRIORITY:I = 0x14

.field private static final FOCUS_FRAME_DELAY:I = 0x3e8

.field private static final ORIENTATION_UNKNOWN:I = -0x1

.field private static final RESET_MULTIAF_FOCUS:I

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final TOUCH_FOCUS_VIEW_PRIORITY:I


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mExpandView:Lcom/freeme/camera/common/widget/RotateLayout;

.field private mFeatureRootView:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

.field private mFocusView:Lcom/freeme/camera/feature/setting/focus/FocusView;

.field private mHandler:Landroid/os/Handler;

.field private mMultiAfWindows:[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

.field private mMultiZoneAfView:Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

.field private mPreviewRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/feature/setting/focus/Focus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mPreviewRect:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p2

    invoke-interface {p2}, Lcom/freeme/camera/common/IAppUi;->getPreviewFrameLayout()Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mFeatureRootView:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mActivity:Landroid/app/Activity;

    new-instance p2, Lcom/freeme/camera/feature/setting/focus/FocusViewController$MainHandler;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController$MainHandler;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusViewController;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mHandler:Landroid/os/Handler;

    sget-object p1, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[FocusViewController]"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/FocusView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mFocusView:Lcom/freeme/camera/feature/setting/focus/FocusView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/freeme/camera/feature/setting/focus/FocusViewController;Lcom/freeme/camera/feature/setting/focus/FocusView;)Lcom/freeme/camera/feature/setting/focus/FocusView;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mFocusView:Lcom/freeme/camera/feature/setting/focus/FocusView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mFeatureRootView:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mPreviewRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/freeme/camera/feature/setting/focus/FocusViewController;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mPreviewRect:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->addMultiZoneAfView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->removeMultiZoneAfView()V

    return-void
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->makeSureViewOnTree()V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/focus/FocusViewController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->setFocusLocation(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mMultiAfWindows:[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

    return-object p0
.end method

.method static synthetic access$402(Lcom/freeme/camera/feature/setting/focus/FocusViewController;[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;)[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mMultiAfWindows:[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

    return-object p1
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/focus/FocusViewController;[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->hasMultiAFData([Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/setting/focus/FocusViewController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->handleMultiAfWindow(Z)V

    return-void
.end method

.method static synthetic access$700()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mMultiZoneAfView:Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    return-object p0
.end method

.method static synthetic access$802(Lcom/freeme/camera/feature/setting/focus/FocusViewController;Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;)Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mMultiZoneAfView:Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private addMultiZoneAfView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/focus/FocusViewController$9;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController$9;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getMultiWindows([B)[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;
    .locals 13

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getMultiWindows] original data size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->limit()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getMultiWindows] intBuffer.limit() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->limit()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "the AF original data from framework is wrong."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    array-length v5, p1

    const/16 v6, 0xc

    sub-int/2addr v5, v6

    invoke-static {p1, v6, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->limit()I

    move-result v5

    sget-object v6, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getMultiWindows] windowCount "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ,single window (width,height ) from native ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    mul-int/lit8 v6, v3, 0x3

    if-eq v5, v6, :cond_1

    sget-object v6, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getMultiWindows] limit = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", the window data number is not consistent with the common info"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_1
    new-array v3, v3, [Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

    :goto_0
    if-ge v1, v5, :cond_2

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v8

    add-int/lit8 v9, v1, 0x2

    invoke-virtual {p1, v9}, Ljava/nio/IntBuffer;->get(I)I

    move-result v9

    div-int/lit8 v10, v2, 0x2

    sub-int v11, v7, v10

    iput v11, v6, Landroid/graphics/Rect;->left:I

    div-int/lit8 v11, v0, 0x2

    sub-int v12, v8, v11

    iput v12, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v10

    iput v7, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v11

    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    new-instance v7, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

    invoke-direct {v7, v6, v9}, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;-><init>(Landroid/graphics/Rect;I)V

    div-int/lit8 v6, v1, 0x3

    aput-object v7, v3, v6

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method private handleMultiAfWindow(Z)V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mMultiZoneAfView:Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->makeSureMultiZoneAfViewOnTree()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mMultiAfWindows:[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

    array-length v0, v0

    sget-object v2, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[handleMultiAfWindow] length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", moving = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    move p1, v1

    :goto_0
    if-ge p1, v0, :cond_1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mMultiAfWindows:[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

    aget-object v2, v2, p1

    iput v1, v2, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;->mResult:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mMultiZoneAfView:Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mMultiAfWindows:[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->updateFocusWindows([Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mMultiZoneAfView:Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->showWindows(Z)V

    goto :goto_3

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mMultiAfWindows:[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;->mResult:I

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mMultiAfWindows:[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

    aget-object v3, v3, v2

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

    move v2, v1

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mMultiZoneAfView:Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->updateFocusWindows([Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mMultiZoneAfView:Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    invoke-virtual {p1, v1}, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->showWindows(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_3
    return-void
.end method

.method private hasMultiAFData([Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;)Z
    .locals 3

    if-eqz p1, :cond_0

    array-length p1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasMultiAFData result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return p1
.end method

.method private makeSureMultiZoneAfViewOnTree()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/focus/FocusViewController$14;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController$14;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private makeSureViewOnTree()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/focus/FocusViewController$13;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController$13;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeMultiZoneAfView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/focus/FocusViewController$10;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController$10;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setFocusLocation(II)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mFocusView:Lcom/freeme/camera/feature/setting/focus/FocusView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mFocusView:Lcom/freeme/camera/feature/setting/focus/FocusView;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mFocusView:Lcom/freeme/camera/feature/setting/focus/FocusView;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mFocusView:Lcom/freeme/camera/feature/setting/focus/FocusView;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/focus/FocusView;->requestLayout()V

    return-void
.end method


# virtual methods
.method protected addFocusView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/focus/FocusViewController$7;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController$7;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected clearAfData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mMultiAfWindows:[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

    return-void
.end method

.method protected clearFocusUi()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/focus/FocusViewController$4;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController$4;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected getFocusState()Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mFocusView:Lcom/freeme/camera/feature/setting/focus/FocusView;

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;->STATE_IDLE:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->makeSureViewOnTree()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mFocusView:Lcom/freeme/camera/feature/setting/focus/FocusView;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getFocusState()Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    move-result-object v0

    return-object v0
.end method

.method protected highlightFocusView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/focus/FocusViewController$5;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController$5;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected isActiveFocusRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mFocusView:Lcom/freeme/camera/feature/setting/focus/FocusView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->isActiveFocusRunning()Z

    move-result v0

    return v0
.end method

.method protected isReadyTodoFocus()Z
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mFocusView:Lcom/freeme/camera/feature/setting/focus/FocusView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[isReadyTodoFocus]mFocusView is null"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mFocusView:Lcom/freeme/camera/feature/setting/focus/FocusView;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[isReadyTodoFocus]width or height is 0"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1
.end method

.method protected lowlightFocusView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/focus/FocusViewController$6;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController$6;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onPreviewChanged(Landroid/graphics/RectF;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/focus/FocusViewController$11;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController$11;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusViewController;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected removeFocusView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/focus/FocusViewController$8;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController$8;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAfData([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->getMultiWindows([B)[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mMultiAfWindows:[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

    return-void
.end method

.method protected setOrientation(I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/focus/FocusViewController$12;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController$12;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusViewController;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showActiveFocusAt(II)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/focus/FocusViewController$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/freeme/camera/feature/setting/focus/FocusViewController$2;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusViewController;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showPassiveFocusAtCenter()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/focus/FocusViewController$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController$1;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopFocusAnimations()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/focus/FocusViewController$3;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController$3;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopFocusAnimationsByState(Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/focus/FocusViewController$15;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController$15;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusViewController;Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
