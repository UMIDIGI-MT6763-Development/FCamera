.class Lcom/freeme/elementscenter/dc/ui/Banner$InverseZInterpolator;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/elementscenter/dc/ui/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InverseZInterpolator"
.end annotation


# instance fields
.field private zInterpolator:Lcom/freeme/elementscenter/dc/ui/Banner$ZInterpolator;


# direct methods
.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/freeme/elementscenter/dc/ui/Banner$ZInterpolator;

    invoke-direct {v0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner$ZInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner$InverseZInterpolator;->zInterpolator:Lcom/freeme/elementscenter/dc/ui/Banner$ZInterpolator;

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner$InverseZInterpolator;->zInterpolator:Lcom/freeme/elementscenter/dc/ui/Banner$ZInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/freeme/elementscenter/dc/ui/Banner$ZInterpolator;->getInterpolation(F)F

    move-result p1

    sub-float/2addr v1, p1

    return v1
.end method
