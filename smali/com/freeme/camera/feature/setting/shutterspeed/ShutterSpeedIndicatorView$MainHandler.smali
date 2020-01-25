.class Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView$MainHandler;
.super Landroid/os/Handler;
.source "ShutterSpeedIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private updateIndicator(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateIndicator]+ speed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->access$100(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->access$100(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-gez v1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->access$200(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->access$200(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->access$400(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;

    invoke-static {v4}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->access$300(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;)[I

    move-result-object v4

    aget v1, v4, v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->access$200(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->access$200(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView$MainHandler;->updateIndicator(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
