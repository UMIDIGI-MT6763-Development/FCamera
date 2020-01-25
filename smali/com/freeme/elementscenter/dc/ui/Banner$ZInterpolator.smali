.class public Lcom/freeme/elementscenter/dc/ui/Banner$ZInterpolator;
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
    name = "ZInterpolator"
.end annotation


# instance fields
.field private focalLength:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner$ZInterpolator;->focalLength:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner$ZInterpolator;->focalLength:F

    add-float/2addr p1, v0

    div-float p1, v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p1, v1, p1

    add-float v2, v0, v1

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    return p1
.end method
