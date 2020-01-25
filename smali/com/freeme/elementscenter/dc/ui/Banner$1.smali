.class Lcom/freeme/elementscenter/dc/ui/Banner$1;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/elementscenter/dc/ui/Banner;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/elementscenter/dc/ui/Banner;


# direct methods
.method constructor <init>(Lcom/freeme/elementscenter/dc/ui/Banner;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner$1;->this$0:Lcom/freeme/elementscenter/dc/ui/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner$1;->this$0:Lcom/freeme/elementscenter/dc/ui/Banner;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/freeme/elementscenter/dc/ui/Banner;->setCanUpdateWallpaper(Z)V

    return-void
.end method
