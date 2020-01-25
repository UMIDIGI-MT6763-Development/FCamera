.class public Lcom/freeme/camera/OnScreenHint;
.super Ljava/lang/Object;
.source "OnScreenHint.java"


# static fields
.field private static final TOAST_DURATION:I = 0x5dc


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHide:Ljava/lang/Runnable;

.field mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private final mShow:Ljava/lang/Runnable;

.field mView:Landroid/view/View;

.field private final mWM:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/OnScreenHint;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/freeme/camera/OnScreenHint$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/OnScreenHint$1;-><init>(Lcom/freeme/camera/OnScreenHint;)V

    iput-object v0, p0, Lcom/freeme/camera/OnScreenHint;->mShow:Ljava/lang/Runnable;

    new-instance v0, Lcom/freeme/camera/OnScreenHint$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/OnScreenHint$2;-><init>(Lcom/freeme/camera/OnScreenHint;)V

    iput-object v0, p0, Lcom/freeme/camera/OnScreenHint;->mHide:Ljava/lang/Runnable;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/freeme/camera/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object p1, p0, Lcom/freeme/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, -0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const v0, 0x7f10000a

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v0, 0x3e8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x11

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v0, -0x1cc

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v0, "OnScreenHint"

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/OnScreenHint;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/OnScreenHint;->handleShow()V

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/OnScreenHint;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/OnScreenHint;->handleHide()V

    return-void
.end method

.method private declared-synchronized handleHide()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/OnScreenHint;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/OnScreenHint;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/freeme/camera/OnScreenHint;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/OnScreenHint;->mView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleShow()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/OnScreenHint;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/freeme/camera/OnScreenHint;->mNextView:Landroid/view/View;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/OnScreenHint;->mWM:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/OnScreenHint;->handleHide()V

    iget-object v0, p0, Lcom/freeme/camera/OnScreenHint;->mNextView:Landroid/view/View;

    iput-object v0, p0, Lcom/freeme/camera/OnScreenHint;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/camera/OnScreenHint;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/freeme/camera/OnScreenHint;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/freeme/camera/OnScreenHint;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/freeme/camera/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/freeme/camera/OnScreenHint;
    .locals 3

    new-instance v0, Lcom/freeme/camera/OnScreenHint;

    invoke-direct {v0, p0}, Lcom/freeme/camera/OnScreenHint;-><init>(Landroid/app/Activity;)V

    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const v1, 0x7f0b005c

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const v1, 0x7f090120

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object p0, v0, Lcom/freeme/camera/OnScreenHint;->mNextView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/freeme/camera/OnScreenHint;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/OnScreenHint;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_1

    const v1, 0x7f090120

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/OnScreenHint;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/freeme/camera/OnScreenHint;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "View is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showToast()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/OnScreenHint;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/freeme/camera/OnScreenHint;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/freeme/camera/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/freeme/camera/OnScreenHint;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/freeme/camera/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/freeme/camera/OnScreenHint;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/freeme/camera/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/freeme/camera/OnScreenHint;->mHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "View is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
