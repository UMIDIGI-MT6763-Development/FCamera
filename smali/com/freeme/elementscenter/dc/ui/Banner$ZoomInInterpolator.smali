.class public Lcom/freeme/elementscenter/dc/ui/Banner$ZoomInInterpolator;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/elementscenter/dc/ui/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZoomInInterpolator"
.end annotation


# instance fields
.field private final decelerate:Landroid/view/animation/DecelerateInterpolator;

.field private final inverseZInterpolator:Lcom/freeme/elementscenter/dc/ui/Banner$InverseZInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/freeme/elementscenter/dc/ui/Banner$InverseZInterpolator;

    const v1, 0x3eb33333    # 0.35f

    invoke-direct {v0, v1}, Lcom/freeme/elementscenter/dc/ui/Banner$InverseZInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner$ZoomInInterpolator;->inverseZInterpolator:Lcom/freeme/elementscenter/dc/ui/Banner$InverseZInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner$ZoomInInterpolator;->decelerate:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner$ZoomInInterpolator;->decelerate:Landroid/view/animation/DecelerateInterpolator;

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner$ZoomInInterpolator;->inverseZInterpolator:Lcom/freeme/elementscenter/dc/ui/Banner$InverseZInterpolator;

    invoke-virtual {v1, p1}, Lcom/freeme/elementscenter/dc/ui/Banner$InverseZInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    return p1
.end method
