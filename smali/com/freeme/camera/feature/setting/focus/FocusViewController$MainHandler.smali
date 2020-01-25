.class Lcom/freeme/camera/feature/setting/focus/FocusViewController$MainHandler;
.super Landroid/os/Handler;
.source "FocusViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/focus/FocusViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/feature/setting/focus/FocusViewController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$700()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleMessage] msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$800(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$800(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView;->clear()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$402(Lcom/freeme/camera/feature/setting/focus/FocusViewController;[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;)[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

    :cond_1
    :goto_0
    return-void
.end method
