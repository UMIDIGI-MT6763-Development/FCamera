.class public Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;
.super Ljava/lang/Object;
.source "StereoCaptureInfoParser.java"

# interfaces
.implements Lcom/mediatek/accessor/parser/IParser;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBufferInfo:Lcom/mediatek/accessor/data/StereoBufferInfo;

.field private mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

.field private mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

.field private mDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

.field private mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

.field private mStereoBufferInfoParser:Lcom/mediatek/accessor/parser/StereoBufferInfoParser;

.field private mStereoCaptureInfo:Lcom/mediatek/accessor/data/StereoCaptureInfo;

.field private mStereoConfigInfoParser:Lcom/mediatek/accessor/parser/StereoConfigInfoParser;

.field private mStereoDepthInfoParser:Lcom/mediatek/accessor/parser/StereoDepthInfoParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->Tag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B[BLjava/util/Map;Lcom/mediatek/accessor/data/StereoCaptureInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Lcom/mediatek/accessor/data/StereoCaptureInfo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStereoCaptureInfo:Lcom/mediatek/accessor/data/StereoCaptureInfo;

    new-instance p2, Lcom/mediatek/accessor/data/StereoBufferInfo;

    invoke-direct {p2}, Lcom/mediatek/accessor/data/StereoBufferInfo;-><init>()V

    iput-object p2, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mBufferInfo:Lcom/mediatek/accessor/data/StereoBufferInfo;

    new-instance p2, Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-direct {p2}, Lcom/mediatek/accessor/data/StereoConfigInfo;-><init>()V

    iput-object p2, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    new-instance p2, Lcom/mediatek/accessor/data/StereoDepthInfo;

    invoke-direct {p2}, Lcom/mediatek/accessor/data/StereoDepthInfo;-><init>()V

    iput-object p2, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    const/4 p2, 0x0

    const/4 p4, 0x1

    invoke-static {p4, p2, p3}, Lcom/mediatek/accessor/operator/MetaOperatorFactory;->getOperatorInstance(I[BLjava/util/Map;)Lcom/mediatek/accessor/operator/IMetaOperator;

    move-result-object p3

    iput-object p3, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    const/4 p3, 0x0

    invoke-static {p3, p1, p2}, Lcom/mediatek/accessor/operator/MetaOperatorFactory;->getOperatorInstance(I[BLjava/util/Map;)Lcom/mediatek/accessor/operator/IMetaOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    return-void
.end method

.method private dumpJsonBuffer(Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/mediatek/accessor/util/Utils;->ENABLE_BUFFER_DUMP:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mediatek/accessor/util/Utils;->DUMP_FILE_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStereoCaptureInfo:Lcom/mediatek/accessor/data/StereoCaptureInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/data/StereoCaptureInfo;->debugDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<dumpJsonBuffer> dumpPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStereoCaptureInfo:Lcom/mediatek/accessor/data/StereoCaptureInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/data/StereoCaptureInfo;->configBuffer:[B

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "StereoCaptureInfo_jsonConfigBuffer_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".txt"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStereoCaptureInfo:Lcom/mediatek/accessor/data/StereoCaptureInfo;

    iget-object v0, v0, Lcom/mediatek/accessor/data/StereoCaptureInfo;->configBuffer:[B

    invoke-static {p1, v0}, Lcom/mediatek/accessor/util/Utils;->writeBufferToFile(Ljava/lang/String;[B)Z

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->TAG:Ljava/lang/String;

    const-string v0, "<dumpJsonBuffer> mStereoCaptureInfo.configBuffer is null!"

    invoke-static {p1, v0}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private writeInfo()V
    .locals 4

    const-string v0, ">>>>StereoCaptureInfoParser-writeInfo"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mBufferInfo:Lcom/mediatek/accessor/data/StereoBufferInfo;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStereoCaptureInfo:Lcom/mediatek/accessor/data/StereoCaptureInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/data/StereoCaptureInfo;->debugDir:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/accessor/data/StereoBufferInfo;->debugDir:Ljava/lang/String;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mBufferInfo:Lcom/mediatek/accessor/data/StereoBufferInfo;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStereoCaptureInfo:Lcom/mediatek/accessor/data/StereoCaptureInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/data/StereoCaptureInfo;->jpsBuffer:[B

    iput-object v1, v0, Lcom/mediatek/accessor/data/StereoBufferInfo;->jpsBuffer:[B

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStereoCaptureInfo:Lcom/mediatek/accessor/data/StereoCaptureInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/data/StereoCaptureInfo;->debugDir:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/accessor/data/StereoConfigInfo;->debugDir:Ljava/lang/String;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStereoCaptureInfo:Lcom/mediatek/accessor/data/StereoCaptureInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/data/StereoCaptureInfo;->ldc:[B

    iput-object v1, v0, Lcom/mediatek/accessor/data/StereoConfigInfo;->ldcBuffer:[B

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStereoCaptureInfo:Lcom/mediatek/accessor/data/StereoCaptureInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/data/StereoCaptureInfo;->clearImage:[B

    iput-object v1, v0, Lcom/mediatek/accessor/data/StereoConfigInfo;->clearImage:[B

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStereoCaptureInfo:Lcom/mediatek/accessor/data/StereoCaptureInfo;

    iget-object v0, v0, Lcom/mediatek/accessor/data/StereoCaptureInfo;->configBuffer:[B

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void

    :cond_0
    new-instance v0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStereoCaptureInfo:Lcom/mediatek/accessor/data/StereoCaptureInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/data/StereoCaptureInfo;->configBuffer:[B

    invoke-direct {v0, v1}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;-><init>([B)V

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mBufferInfo:Lcom/mediatek/accessor/data/StereoBufferInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getMaskBuffer()[B

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/accessor/data/StereoBufferInfo;->maskBuffer:[B

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getJpsWidth()I

    move-result v2

    iput v2, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->jpsWidth:I

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getJpsHeight()I

    move-result v2

    iput v2, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->jpsHeight:I

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getMaskWidth()I

    move-result v2

    iput v2, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->maskWidth:I

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getMaskHeight()I

    move-result v2

    iput v2, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->maskHeight:I

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getPosX()I

    move-result v2

    iput v2, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->posX:I

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getPosY()I

    move-result v2

    iput v2, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->posY:I

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getViewWidth()I

    move-result v2

    iput v2, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->viewWidth:I

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getViewHeight()I

    move-result v2

    iput v2, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->viewHeight:I

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getOrientation()I

    move-result v2

    iput v2, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->imageOrientation:I

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getDepthRotation()I

    move-result v2

    iput v2, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->depthOrientation:I

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getMainCamPos()I

    move-result v2

    iput v2, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->mainCamPos:I

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getTouchCoordX1st()I

    move-result v2

    iput v2, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->touchCoordX1st:I

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getTouchCoordY1st()I

    move-result v2

    iput v2, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->touchCoordY1st:I

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getFaceRectCount()I

    move-result v2

    iput v2, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->faceCount:I

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getDof()I

    move-result v2

    iput v2, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->dofLevel:I

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getLdcWidth()I

    move-result v2

    iput v2, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->ldcWidth:I

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getLdcHeight()I

    move-result v2

    iput v2, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->ldcHeight:I

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getFaceFlag()Z

    move-result v2

    iput-boolean v2, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->isFace:Z

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getFaceRatio()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->faceRatio:F

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getCurDac()I

    move-result v2

    iput v2, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->curDac:I

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getMinDac()I

    move-result v2

    iput v2, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->minDac:I

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getMaxDac()I

    move-result v2

    iput v2, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->maxDac:I

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStereoCaptureInfo:Lcom/mediatek/accessor/data/StereoCaptureInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/data/StereoCaptureInfo;->debugDir:Ljava/lang/String;

    iput-object v2, v1, Lcom/mediatek/accessor/data/StereoDepthInfo;->debugDir:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getMetaBufferWidth()I

    move-result v2

    iput v2, v1, Lcom/mediatek/accessor/data/StereoDepthInfo;->metaBufferWidth:I

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getMetaBufferHeight()I

    move-result v2

    iput v2, v1, Lcom/mediatek/accessor/data/StereoDepthInfo;->metaBufferHeight:I

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getDepthBufferWidth()I

    move-result v2

    iput v2, v1, Lcom/mediatek/accessor/data/StereoDepthInfo;->depthBufferWidth:I

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getDepthBufferHeight()I

    move-result v0

    iput v0, v1, Lcom/mediatek/accessor/data/StereoDepthInfo;->depthBufferHeight:I

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStereoCaptureInfo:Lcom/mediatek/accessor/data/StereoCaptureInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/data/StereoCaptureInfo;->depthBuffer:[B

    iput-object v1, v0, Lcom/mediatek/accessor/data/StereoDepthInfo;->depthBuffer:[B

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStereoCaptureInfo:Lcom/mediatek/accessor/data/StereoCaptureInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/data/StereoCaptureInfo;->debugBuffer:[B

    iput-object v1, v0, Lcom/mediatek/accessor/data/StereoDepthInfo;->debugBuffer:[B

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void
.end method


# virtual methods
.method public read()V
    .locals 0

    return-void
.end method

.method public serialize()Lcom/mediatek/accessor/parser/SerializedInfo;
    .locals 3

    const-string v0, ">>>>StereoCaptureInfoParser-serialize"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->TAG:Ljava/lang/String;

    const-string v1, "<serialize>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mediatek/accessor/parser/SerializedInfo;

    invoke-direct {v0}, Lcom/mediatek/accessor/parser/SerializedInfo;-><init>()V

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/mediatek/accessor/operator/IMetaOperator;->serialize()Ljava/util/Map;

    move-result-object v1

    const-string v2, "XMP"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/mediatek/accessor/parser/SerializedInfo;->standardXmpBuf:[B

    :cond_0
    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/mediatek/accessor/operator/IMetaOperator;->serialize()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/accessor/parser/SerializedInfo;->customizedBufMap:Ljava/util/Map;

    :cond_1
    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-object v0
.end method

.method public write()V
    .locals 5

    const-string v0, ">>>>StereoCaptureInfoParser-write"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->TAG:Ljava/lang/String;

    const-string v1, "<write>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStereoCaptureInfo:Lcom/mediatek/accessor/data/StereoCaptureInfo;

    if-nez v0, :cond_0

    sget-object v0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->TAG:Ljava/lang/String;

    const-string v1, "<write> mStereoCaptureInfo is null!"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void

    :cond_0
    const-string v0, "write"

    invoke-direct {p0, v0}, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->dumpJsonBuffer(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->writeInfo()V

    new-instance v0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mBufferInfo:Lcom/mediatek/accessor/data/StereoBufferInfo;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;-><init>(Lcom/mediatek/accessor/operator/IMetaOperator;Lcom/mediatek/accessor/data/StereoBufferInfo;)V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStereoBufferInfoParser:Lcom/mediatek/accessor/parser/StereoBufferInfoParser;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStereoBufferInfoParser:Lcom/mediatek/accessor/parser/StereoBufferInfoParser;

    invoke-virtual {v0}, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->write()V

    new-instance v0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;-><init>(Lcom/mediatek/accessor/operator/IMetaOperator;Lcom/mediatek/accessor/operator/IMetaOperator;Lcom/mediatek/accessor/operator/IMetaOperator;Lcom/mediatek/accessor/data/StereoDepthInfo;)V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStereoDepthInfoParser:Lcom/mediatek/accessor/parser/StereoDepthInfoParser;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStereoDepthInfoParser:Lcom/mediatek/accessor/parser/StereoDepthInfoParser;

    invoke-virtual {v0}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->write()V

    new-instance v0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;-><init>(Lcom/mediatek/accessor/operator/IMetaOperator;Lcom/mediatek/accessor/operator/IMetaOperator;Lcom/mediatek/accessor/operator/IMetaOperator;Lcom/mediatek/accessor/data/StereoConfigInfo;)V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStereoConfigInfoParser:Lcom/mediatek/accessor/parser/StereoConfigInfoParser;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoCaptureInfoParser;->mStereoConfigInfoParser:Lcom/mediatek/accessor/parser/StereoConfigInfoParser;

    invoke-virtual {v0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->write()V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void
.end method
