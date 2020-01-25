.class public Lcom/freeme/camera/util/TouchCoordinate;
.super Ljava/lang/Object;
.source "TouchCoordinate.java"


# instance fields
.field private maxX:F

.field private maxY:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/freeme/camera/util/TouchCoordinate;->x:F

    iput p2, p0, Lcom/freeme/camera/util/TouchCoordinate;->y:F

    iput p3, p0, Lcom/freeme/camera/util/TouchCoordinate;->maxX:F

    iput p4, p0, Lcom/freeme/camera/util/TouchCoordinate;->maxY:F

    return-void
.end method


# virtual methods
.method public getMaxX()F
    .locals 1

    iget v0, p0, Lcom/freeme/camera/util/TouchCoordinate;->maxX:F

    return v0
.end method

.method public getMaxY()F
    .locals 1

    iget v0, p0, Lcom/freeme/camera/util/TouchCoordinate;->maxY:F

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/freeme/camera/util/TouchCoordinate;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/freeme/camera/util/TouchCoordinate;->y:F

    return v0
.end method
