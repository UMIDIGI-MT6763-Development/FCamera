.class Lcom/freeme/camera/ui/shutter/ShutterButton$1;
.super Ljava/lang/Object;
.source "ShutterButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/shutter/ShutterButton;->drawableStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/shutter/ShutterButton;

.field final synthetic val$pressed:Z


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/shutter/ShutterButton;Z)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterButton$1;->this$0:Lcom/freeme/camera/ui/shutter/ShutterButton;

    iput-boolean p2, p0, Lcom/freeme/camera/ui/shutter/ShutterButton$1;->val$pressed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterButton$1;->this$0:Lcom/freeme/camera/ui/shutter/ShutterButton;

    iget-boolean v1, p0, Lcom/freeme/camera/ui/shutter/ShutterButton$1;->val$pressed:Z

    invoke-static {v0, v1}, Lcom/freeme/camera/ui/shutter/ShutterButton;->access$000(Lcom/freeme/camera/ui/shutter/ShutterButton;Z)V

    return-void
.end method
