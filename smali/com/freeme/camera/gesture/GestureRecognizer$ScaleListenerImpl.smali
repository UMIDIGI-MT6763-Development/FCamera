.class Lcom/freeme/camera/gesture/GestureRecognizer$ScaleListenerImpl;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/gesture/GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/gesture/GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/gesture/GestureRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/gesture/GestureRecognizer$ScaleListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureRecognizer;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/gesture/GestureRecognizer;Lcom/freeme/camera/gesture/GestureRecognizer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/gesture/GestureRecognizer$ScaleListenerImpl;-><init>(Lcom/freeme/camera/gesture/GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureRecognizer$ScaleListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureRecognizer;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureRecognizer;->access$400(Lcom/freeme/camera/gesture/GestureRecognizer;)Lcom/freeme/camera/gesture/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/gesture/GestureRecognizer$Listener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureRecognizer$ScaleListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureRecognizer;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureRecognizer;->access$400(Lcom/freeme/camera/gesture/GestureRecognizer;)Lcom/freeme/camera/gesture/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/gesture/GestureRecognizer$Listener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureRecognizer$ScaleListenerImpl;->this$0:Lcom/freeme/camera/gesture/GestureRecognizer;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureRecognizer;->access$400(Lcom/freeme/camera/gesture/GestureRecognizer;)Lcom/freeme/camera/gesture/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/gesture/GestureRecognizer$Listener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    return-void
.end method
