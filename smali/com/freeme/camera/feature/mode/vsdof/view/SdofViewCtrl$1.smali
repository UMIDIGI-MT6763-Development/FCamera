.class Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$1;
.super Ljava/lang/Object;
.source "SdofViewCtrl.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$400(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    mul-int/2addr p2, p1

    div-int/lit16 p2, p2, 0xaf

    int-to-float p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$000(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$500()[Ljava/lang/String;

    move-result-object p3

    aget-object p3, p3, p1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$600(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)J

    move-result-wide p2

    sub-long/2addr v0, p2

    const-wide/16 p2, 0x32

    cmp-long p2, v0, p2

    if-ltz p2, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$700(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)I

    move-result p2

    if-eq p1, p2, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-static {p2, p1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$702(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;I)I

    invoke-static {}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$800()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onProgressChanged level = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-static {p3}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$700(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$900(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$ViewChangeListener;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$700(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$ViewChangeListener;->onVsDofLevelChanged(I)V

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$602(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;J)J

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$1000(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;->removeMessages(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$1000(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$1102(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;I)I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$1100(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$400(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xaf

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$702(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;I)I

    invoke-static {}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$800()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopTrackingTouch level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$700(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$900(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$ViewChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$700(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$ViewChangeListener;->onVsDofLevelChanged(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$1;->this$0:Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;->access$1000(Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl;)Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;

    move-result-object p1

    const/4 v0, 0x5

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Lcom/freeme/camera/feature/mode/vsdof/view/SdofViewCtrl$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
