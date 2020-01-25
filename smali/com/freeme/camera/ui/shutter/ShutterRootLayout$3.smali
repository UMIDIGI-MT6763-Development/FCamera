.class Lcom/freeme/camera/ui/shutter/ShutterRootLayout$3;
.super Ljava/lang/Object;
.source "ShutterRootLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/shutter/ShutterRootLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$3;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$3;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$602(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;Z)Z

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$3;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {v0, v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$302(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;I)I

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$3;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$400(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Lcom/freeme/camera/ui/shutter/ShutterRootLayout$OnShutterChangeListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$OnShutterChangeListener;->getInitWhichShutter()I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$500(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;II)V

    return-void
.end method
