.class public Lcom/freeme/camera/gesture/GestureRecognizer;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/gesture/GestureRecognizer$DownUpListenerImpl;,
        Lcom/freeme/camera/gesture/GestureRecognizer$ScaleListenerImpl;,
        Lcom/freeme/camera/gesture/GestureRecognizer$GestureRootListenerImpl;,
        Lcom/freeme/camera/gesture/GestureRecognizer$GestureListenerImpl;,
        Lcom/freeme/camera/gesture/GestureRecognizer$Listener;
    }
.end annotation


# instance fields
.field private mDownUpDetector:Lcom/freeme/camera/gesture/DownUpDetector;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mListener:Lcom/freeme/camera/gesture/GestureRecognizer$Listener;

.field private final mRootGestureDetector:Landroid/view/GestureDetector;

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/freeme/camera/gesture/GestureRecognizer$Listener;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/gesture/GestureRecognizer$Listener;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/gesture/GestureRecognizer;->mListener:Lcom/freeme/camera/gesture/GestureRecognizer$Listener;

    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/freeme/camera/gesture/GestureRecognizer$GestureListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/gesture/GestureRecognizer$GestureListenerImpl;-><init>(Lcom/freeme/camera/gesture/GestureRecognizer;Lcom/freeme/camera/gesture/GestureRecognizer$1;)V

    const/4 v2, 0x1

    invoke-direct {p2, p1, v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object p2, p0, Lcom/freeme/camera/gesture/GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/freeme/camera/gesture/GestureRecognizer$GestureRootListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/gesture/GestureRecognizer$GestureRootListenerImpl;-><init>(Lcom/freeme/camera/gesture/GestureRecognizer;Lcom/freeme/camera/gesture/GestureRecognizer$1;)V

    invoke-direct {p2, p1, v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object p2, p0, Lcom/freeme/camera/gesture/GestureRecognizer;->mRootGestureDetector:Landroid/view/GestureDetector;

    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance v0, Lcom/freeme/camera/gesture/GestureRecognizer$ScaleListenerImpl;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/gesture/GestureRecognizer$ScaleListenerImpl;-><init>(Lcom/freeme/camera/gesture/GestureRecognizer;Lcom/freeme/camera/gesture/GestureRecognizer$1;)V

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/freeme/camera/gesture/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    new-instance p1, Lcom/freeme/camera/gesture/DownUpDetector;

    new-instance p2, Lcom/freeme/camera/gesture/GestureRecognizer$DownUpListenerImpl;

    invoke-direct {p2, p0, v1}, Lcom/freeme/camera/gesture/GestureRecognizer$DownUpListenerImpl;-><init>(Lcom/freeme/camera/gesture/GestureRecognizer;Lcom/freeme/camera/gesture/GestureRecognizer$1;)V

    invoke-direct {p1, p2}, Lcom/freeme/camera/gesture/DownUpDetector;-><init>(Lcom/freeme/camera/gesture/DownUpDetector$DownUpListener;)V

    iput-object p1, p0, Lcom/freeme/camera/gesture/GestureRecognizer;->mDownUpDetector:Lcom/freeme/camera/gesture/DownUpDetector;

    return-void
.end method

.method static synthetic access$400(Lcom/freeme/camera/gesture/GestureRecognizer;)Lcom/freeme/camera/gesture/GestureRecognizer$Listener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/gesture/GestureRecognizer;->mListener:Lcom/freeme/camera/gesture/GestureRecognizer$Listener;

    return-object p0
.end method


# virtual methods
.method public onRootTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureRecognizer;->mRootGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureRecognizer;->mDownUpDetector:Lcom/freeme/camera/gesture/DownUpDetector;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/gesture/DownUpDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method
