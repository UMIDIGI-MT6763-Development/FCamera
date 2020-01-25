.class public Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;
.super Ljava/lang/Object;
.source "Banner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/elementscenter/dc/ui/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageInfo"
.end annotation


# instance fields
.field public mAlpha:F

.field public mDeltaTranx:F

.field public mDeltaTrany:F

.field public mIndex:I

.field public mLowerBound:I

.field public mRotateY:F

.field public mScaleX:F

.field public mScaleY:F

.field public mTransX:I

.field public mTransY:I

.field final synthetic this$0:Lcom/freeme/elementscenter/dc/ui/Banner;


# direct methods
.method public constructor <init>(Lcom/freeme/elementscenter/dc/ui/Banner;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->this$0:Lcom/freeme/elementscenter/dc/ui/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mTransX:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mTransY:I

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mIndex:I

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mLowerBound:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mDeltaTranx:F

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mRotateY:F

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mDeltaTrany:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mAlpha:F

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mScaleX:F

    iput v0, p0, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mScaleY:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ". PageInfo(mTransX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mTransX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLowerBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/elementscenter/dc/ui/Banner$PageInfo;->mLowerBound:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
