.class Lcom/freeme/camera/feature/setting/exposure/ExposureView$1;
.super Ljava/lang/Object;
.source "ExposureView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/exposure/ExposureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureView;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/exposure/ExposureView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    invoke-static {p3}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->access$000(Lcom/freeme/camera/feature/setting/exposure/ExposureView;)Lcom/freeme/camera/feature/setting/exposure/ExposureView$ExposureViewChangedListener;

    move-result-object p3

    if-eqz p3, :cond_3

    if-ltz p2, :cond_2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p3

    if-le p2, p3, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->access$100()I

    move-result p3

    invoke-static {}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->access$200()I

    move-result v0

    sub-int/2addr p3, v0

    if-nez p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    invoke-static {}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->access$200()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/2addr v0, p3

    add-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    div-int/2addr v0, p3

    div-int/2addr p2, v0

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    invoke-static {p3}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->access$300(Lcom/freeme/camera/feature/setting/exposure/ExposureView;)I

    move-result p3

    if-eq p2, p3, :cond_3

    invoke-static {}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->access$400()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onProgressChanged] mLastProgress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->access$300(Lcom/freeme/camera/feature/setting/exposure/ExposureView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",progress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",sMaxEv = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->access$100()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",sMinEv = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->access$200()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",max = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    invoke-static {p1, p2}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->access$302(Lcom/freeme/camera/feature/setting/exposure/ExposureView;I)I

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->access$000(Lcom/freeme/camera/feature/setting/exposure/ExposureView;)Lcom/freeme/camera/feature/setting/exposure/ExposureView$ExposureViewChangedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->access$300(Lcom/freeme/camera/feature/setting/exposure/ExposureView;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/freeme/camera/feature/setting/exposure/ExposureView$ExposureViewChangedListener;->onExposureViewChanged(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->access$500(Lcom/freeme/camera/feature/setting/exposure/ExposureView;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->access$600(Lcom/freeme/camera/feature/setting/exposure/ExposureView;)Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/exposure/VerticalSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->access$700(Lcom/freeme/camera/feature/setting/exposure/ExposureView;Z)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->access$500(Lcom/freeme/camera/feature/setting/exposure/ExposureView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/exposure/ExposureView$1;->this$0:Lcom/freeme/camera/feature/setting/exposure/ExposureView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/setting/exposure/ExposureView;->access$700(Lcom/freeme/camera/feature/setting/exposure/ExposureView;Z)V

    :cond_0
    return-void
.end method
