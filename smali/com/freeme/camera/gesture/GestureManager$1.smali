.class Lcom/freeme/camera/gesture/GestureManager$1;
.super Ljava/lang/Object;
.source "GestureManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/gesture/GestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/gesture/GestureManager;


# direct methods
.method constructor <init>(Lcom/freeme/camera/gesture/GestureManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/gesture/GestureManager$1;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/freeme/camera/gesture/GestureManager$1;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {p1}, Lcom/freeme/camera/gesture/GestureManager;->access$000(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/gesture/GestureRecognizer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/freeme/camera/gesture/GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method
