.class Lcom/freeme/camera/gesture/GestureRecognizer$DownUpListenerImpl;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"

# interfaces
.implements Lcom/freeme/camera/gesture/DownUpDetector$DownUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/gesture/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownUpListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/gesture/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/gesture/GestureRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/gesture/GestureRecognizer$DownUpListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/gesture/GestureRecognizer;Lcom/freeme/camera/gesture/GestureRecognizer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/gesture/GestureRecognizer$DownUpListenerImpl;-><init>(Lcom/freeme/camera/gesture/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onDownEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureRecognizer$DownUpListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureRecognizer;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureRecognizer;->access$400(Lcom/freeme/camera/gesture/GestureRecognizer;)Lcom/freeme/camera/gesture/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/gesture/GestureRecognizer$Listener;->onDownEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onUpEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureRecognizer$DownUpListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureRecognizer;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureRecognizer;->access$400(Lcom/freeme/camera/gesture/GestureRecognizer;)Lcom/freeme/camera/gesture/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/gesture/GestureRecognizer$Listener;->onUpEvent(Landroid/view/MotionEvent;)V

    return-void
.end method
