.class Lcom/freeme/camera/feature/setting/flash/Flash$1;
.super Landroid/content/BroadcastReceiver;
.source "Flash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/flash/Flash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/flash/Flash;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/flash/Flash;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/flash/Flash$1;->this$0:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x42c80000    # 100.0f

    const-string v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const-string p1, "scale"

    const/16 v1, 0x64

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    float-to-int p1, v0

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/flash/Flash$1;->this$0:Lcom/freeme/camera/feature/setting/flash/Flash;

    iput p1, p2, Lcom/freeme/camera/feature/setting/flash/Flash;->barrtyLevel:I

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/flash/Flash;->access$100(Lcom/freeme/camera/feature/setting/flash/Flash;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/Flash$1;->this$0:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/flash/Flash;->access$200(Lcom/freeme/camera/feature/setting/flash/Flash;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f00f4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/OnScreenHint;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/freeme/camera/OnScreenHint;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/freeme/camera/feature/setting/flash/Flash;->access$002(Lcom/freeme/camera/feature/setting/flash/Flash;Lcom/freeme/camera/OnScreenHint;)Lcom/freeme/camera/OnScreenHint;

    const/16 p2, 0xf

    if-gt p1, p2, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/Flash$1;->this$0:Lcom/freeme/camera/feature/setting/flash/Flash;

    const-string p2, "off"

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/flash/Flash;->onFlashValueChanged(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/Flash$1;->this$0:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/flash/Flash;->access$300(Lcom/freeme/camera/feature/setting/flash/Flash;)Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    move-result-object p1

    iget-object p1, p1, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashEntryView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/Flash$1;->this$0:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/flash/Flash;->access$300(Lcom/freeme/camera/feature/setting/flash/Flash;)Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    move-result-object p1

    iget-object p1, p1, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashEntryView:Landroid/widget/ImageView;

    const p2, -0x777778

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/Flash$1;->this$0:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/flash/Flash;->access$000(Lcom/freeme/camera/feature/setting/flash/Flash;)Lcom/freeme/camera/OnScreenHint;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/Flash$1;->this$0:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/flash/Flash;->getEntryValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/Flash$1;->this$0:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/flash/Flash;->access$000(Lcom/freeme/camera/feature/setting/flash/Flash;)Lcom/freeme/camera/OnScreenHint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/OnScreenHint;->showToast()V

    :cond_1
    return-void
.end method
