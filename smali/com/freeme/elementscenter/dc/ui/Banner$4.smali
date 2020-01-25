.class Lcom/freeme/elementscenter/dc/ui/Banner$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Banner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/elementscenter/dc/ui/Banner;->hideScrollingIndicator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cancelled:Z

.field final synthetic this$0:Lcom/freeme/elementscenter/dc/ui/Banner;


# direct methods
.method constructor <init>(Lcom/freeme/elementscenter/dc/ui/Banner;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner$4;->this$0:Lcom/freeme/elementscenter/dc/ui/Banner;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner$4;->cancelled:Z

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner$4;->this$0:Lcom/freeme/elementscenter/dc/ui/Banner;

    iget-object p1, p1, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicator:Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner$4;->cancelled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner$4;->this$0:Lcom/freeme/elementscenter/dc/ui/Banner;

    iget-object p1, p1, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicator:Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner$4;->this$0:Lcom/freeme/elementscenter/dc/ui/Banner;

    iget-object p1, p1, Lcom/freeme/elementscenter/dc/ui/Banner;->mScrollIndicator:Lcom/freeme/elementscenter/dc/ui/BannerIndicator;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
