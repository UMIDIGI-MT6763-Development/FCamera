.class public Lcom/freeme/elementscenter/dc/ui/Banner$ScrollInterpolator;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/elementscenter/dc/ui/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollInterpolator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/elementscenter/dc/ui/Banner;


# direct methods
.method public constructor <init>(Lcom/freeme/elementscenter/dc/ui/Banner;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner$ScrollInterpolator;->this$0:Lcom/freeme/elementscenter/dc/ui/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 7

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner$ScrollInterpolator;->this$0:Lcom/freeme/elementscenter/dc/ui/Banner;

    iget-object v0, v0, Lcom/freeme/elementscenter/dc/ui/Banner;->mState:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    sget-object v1, Lcom/freeme/elementscenter/dc/ui/Banner$State;->NORMAL:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-ne v0, v1, :cond_0

    sub-float/2addr p1, v2

    float-to-double v0, p1

    const-wide/high16 v5, 0x401c000000000000L    # 7.0

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v3

    double-to-float p1, v0

    return p1

    :cond_0
    sub-float/2addr p1, v2

    float-to-double v0, p1

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v3

    double-to-float p1, v0

    return p1
.end method
