.class public Lcom/mediatek/accessor/util/StereoInfoJsonParser;
.super Ljava/lang/Object;
.source "StereoInfoJsonParser.java"


# static fields
.field private static final DEPTHINFO_HEIGHT:Ljava/lang/String; = "height"

.field private static final DEPTHINFO_TAG:Ljava/lang/String; = "depth_buffer_size"

.field private static final DEPTHINFO_WIDTH:Ljava/lang/String; = "width"

.field private static final DEPTH_INFO_DEPTH_HEIGHT:Ljava/lang/String; = "height"

.field private static final DEPTH_INFO_DEPTH_WIDTH:Ljava/lang/String; = "width"

.field private static final DEPTH_INFO_META_HEIGHT:Ljava/lang/String; = "meta_height"

.field private static final DEPTH_INFO_META_WIDTH:Ljava/lang/String; = "meta_width"

.field private static final DEPTH_INFO_TAG:Ljava/lang/String; = "packed_depth_buffer_info"

.field private static final DEPTH_ROTATION_INFO_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final DEPTH_ROTATION_INFO_TAG:Ljava/lang/String; = "depthmap_orientation"

.field private static final DOF_LEVEL_TAG:Ljava/lang/String; = "dof_level"

.field private static final FACE_DETECTION_INFO_BOTTOM:Ljava/lang/String; = "bottom"

.field private static final FACE_DETECTION_INFO_LEFT:Ljava/lang/String; = "left"

.field private static final FACE_DETECTION_INFO_RIGHT:Ljava/lang/String; = "right"

.field private static final FACE_DETECTION_INFO_RIP:Ljava/lang/String; = "rotation-in-plane"

.field private static final FACE_DETECTION_INFO_TAG:Ljava/lang/String; = "face_detections"

.field private static final FACE_DETECTION_INFO_TOP:Ljava/lang/String; = "top"

.field private static final FOCUS_INFO_DAC_CUR:Ljava/lang/String; = "dac_cur"

.field private static final FOCUS_INFO_DAC_MAX:Ljava/lang/String; = "dac_max"

.field private static final FOCUS_INFO_DAC_MIN:Ljava/lang/String; = "dac_min"

.field private static final FOCUS_INFO_FACE_RATIO:Ljava/lang/String; = "face_ratio"

.field private static final FOCUS_INFO_IS_FACE:Ljava/lang/String; = "is_face"

.field private static final FOCUS_INFO_TAG:Ljava/lang/String; = "focus_info"

.field private static final GDEPTHINFO_FAR:Ljava/lang/String; = "Far"

.field private static final GDEPTHINFO_FORMAT:Ljava/lang/String; = "Format"

.field private static final GDEPTHINFO_MIME:Ljava/lang/String; = "Mime"

.field private static final GDEPTHINFO_NEAR:Ljava/lang/String; = "Near"

.field private static final GDEPTHINFO_TAG:Ljava/lang/String; = "GDepth"

.field private static final GFOCUSINFO_BLUR_AT_INFINITY:Ljava/lang/String; = "BlurAtInfinity"

.field private static final GFOCUSINFO_FOCAL_DISTANCE:Ljava/lang/String; = "FocalDistance"

.field private static final GFOCUSINFO_FOCAL_POINT_X:Ljava/lang/String; = "FocalPointX"

.field private static final GFOCUSINFO_FOCAL_POINT_Y:Ljava/lang/String; = "FocalPointY"

.field private static final GFOCUSINFO_TAG:Ljava/lang/String; = "GFocus"

.field private static final GIMAGEINFO_MIME:Ljava/lang/String; = "Mime"

.field private static final GIMAGEINFO_TAG:Ljava/lang/String; = "GImage"

.field private static final JPSINFO_HEIGHT:Ljava/lang/String; = "height"

.field private static final JPSINFO_TAG:Ljava/lang/String; = "JPS_size"

.field private static final JPSINFO_WIDTH:Ljava/lang/String; = "width"

.field private static final LDCINFO_HEIGHT:Ljava/lang/String; = "height"

.field private static final LDCINFO_TAG:Ljava/lang/String; = "ldc_size"

.field private static final LDCINFO_WIDTH:Ljava/lang/String; = "width"

.field private static final MAIN_CAM_POSITION_INFO_POSITION:Ljava/lang/String; = "relative_position"

.field private static final MAIN_CAM_POSITION_INFO_TAG:Ljava/lang/String; = "sensor_relative_position"

.field private static final MASKINFO_HEIGHT:Ljava/lang/String; = "height"

.field private static final MASKINFO_MASK:Ljava/lang/String; = "mask"

.field private static final MASKINFO_TAG:Ljava/lang/String; = "mask_info"

.field private static final MASKINFO_WIDTH:Ljava/lang/String; = "width"

.field private static final ORIENTATIONINFO_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final ORIENTATIONINFO_TAG:Ljava/lang/String; = "capture_orientation"

.field private static final POSINFO_TAG:Ljava/lang/String; = "main_cam_align_shift"

.field private static final POSINFO_X:Ljava/lang/String; = "x"

.field private static final POSINFO_Y:Ljava/lang/String; = "y"

.field private static final TAG:Ljava/lang/String;

.field private static final TOUCH_COORD_INFO_BOTTOM:Ljava/lang/String; = "bottom"

.field private static final TOUCH_COORD_INFO_LEFT:Ljava/lang/String; = "left"

.field private static final TOUCH_COORD_INFO_RIGHT:Ljava/lang/String; = "right"

.field private static final TOUCH_COORD_INFO_TAG:Ljava/lang/String; = "focus_roi"

.field private static final TOUCH_COORD_INFO_TOP:Ljava/lang/String; = "top"

.field private static final VALID_MASK:I = 0xff

.field public static final VERIFY_GEO_INFO_LEVEL:Ljava/lang/String; = "quality_level"

.field public static final VERIFY_GEO_INFO_TAG:Ljava/lang/String; = "verify_geo_data"

.field private static final VERIFY_MTK_CHA_INFO_LEVEL:Ljava/lang/String; = "quality_level"

.field private static final VERIFY_MTK_CHA_INFO_TAG:Ljava/lang/String; = "verify_mtk_cha"

.field private static final VERIFY_PHO_INFO_LEVEL:Ljava/lang/String; = "quality_level"

.field private static final VERIFY_PHO_INFO_TAG:Ljava/lang/String; = "verify_pho_data"

.field private static final VIEWINFO_HEIGHT:Ljava/lang/String; = "height"

.field private static final VIEWINFO_TAG:Ljava/lang/String; = "input_image_size"

.field private static final VIEWINFO_WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private mDepthRotation:I

.field private mFaceRectCount:I

.field private mGDepthHeight:I

.field private mGDepthWidth:I

.field private mJpsHeight:I

.field private mJpsWidth:I

.field private mMainCamPostion:I

.field private mMaskHeight:I

.field private mMaskSize:I

.field private mMaskWidth:I

.field private mOrientation:I

.field private mParser:Lcom/mediatek/accessor/util/JsonParser;

.field private mPosX:I

.field private mPosY:I

.field private mTouchCoordX1st:I

.field private mTouchCoordY1st:I

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->Tag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mFaceRectCount:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMainCamPostion:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mOrientation:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mDepthRotation:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mViewWidth:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mViewHeight:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mTouchCoordX1st:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mTouchCoordY1st:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mPosX:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mPosY:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMaskWidth:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMaskHeight:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMaskSize:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mJpsWidth:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mJpsHeight:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mGDepthWidth:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mGDepthHeight:I

    new-instance v0, Lcom/mediatek/accessor/util/JsonParser;

    invoke-direct {v0, p1}, Lcom/mediatek/accessor/util/JsonParser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mFaceRectCount:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMainCamPostion:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mOrientation:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mDepthRotation:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mViewWidth:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mViewHeight:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mTouchCoordX1st:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mTouchCoordY1st:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mPosX:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mPosY:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMaskWidth:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMaskHeight:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMaskSize:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mJpsWidth:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mJpsHeight:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mGDepthWidth:I

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mGDepthHeight:I

    new-instance v0, Lcom/mediatek/accessor/util/JsonParser;

    invoke-direct {v0, p1}, Lcom/mediatek/accessor/util/JsonParser;-><init>([B)V

    iput-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    return-void
.end method

.method private decodeMaskBuffer([[II)[B
    .locals 8

    new-array v0, p2, [B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p2, :cond_0

    aput-byte v3, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_4

    aget-object v5, p1, v4

    aget v5, v5, v3

    aget-object v6, p1, v4

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v6, v5

    if-gt v5, p2, :cond_3

    if-ltz v5, :cond_3

    if-ltz v6, :cond_3

    if-le v6, p2, :cond_1

    goto :goto_3

    :cond_1
    :goto_2
    if-ge v5, v6, :cond_2

    const/4 v7, -0x1

    aput-byte v7, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    sget-object p1, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<decodeMaskBuffer> error, startIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maskSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sget-object v3, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<decodeMaskBuffer> performance, decode mask costs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p1, v1

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCurDac()I
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "focus_info"

    const-string v2, "dac_cur"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getFocusInfo> FocusInfo.curDac: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getDepthBufferHeight()I
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "packed_depth_buffer_info"

    const-string v2, "height"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getDepthBufferHeight> depthHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getDepthBufferWidth()I
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "packed_depth_buffer_info"

    const-string v2, "width"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getDepthBufferWidth> depthWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getDepthRotation()I
    .locals 4

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mDepthRotation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "depthmap_orientation"

    const/4 v2, 0x0

    const-string v3, "orientation"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mDepthRotation:I

    sget-object v0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getDepthRotation> mDepthRotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mDepthRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mDepthRotation:I

    return v0
.end method

.method public getDof()I
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "dof_level"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getDof>  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getFaceFlag()Z
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "focus_info"

    const-string v2, "is_face"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueBooleanFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getFaceFlag> FocusInfo.isFace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getFaceRatio()D
    .locals 5

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "focus_info"

    const-string v2, "face_ratio"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueDoubleFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    sget-object v2, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<getFaceRatio> FocusInfo.faceRatio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public getFaceRect(I)Landroid/graphics/Rect;
    .locals 6

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "face_detections"

    const-string v2, "left"

    invoke-virtual {v0, v1, p1, v2}, Lcom/mediatek/accessor/util/JsonParser;->getObjectPropertyValueFromArray(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v2, "face_detections"

    const-string v3, "top"

    invoke-virtual {v1, v2, p1, v3}, Lcom/mediatek/accessor/util/JsonParser;->getObjectPropertyValueFromArray(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v3, "face_detections"

    const-string v4, "right"

    invoke-virtual {v2, v3, p1, v4}, Lcom/mediatek/accessor/util/JsonParser;->getObjectPropertyValueFromArray(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v4, "face_detections"

    const-string v5, "bottom"

    invoke-virtual {v3, v4, p1, v5}, Lcom/mediatek/accessor/util/JsonParser;->getObjectPropertyValueFromArray(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-eq v1, v3, :cond_1

    if-eq v2, v3, :cond_1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3

    :cond_1
    :goto_0
    sget-object p1, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    const-string v0, "<getFaceRect> error: left == -1 || top == -1 || right == -1 || bottom == -1"

    invoke-static {p1, v0}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFaceRectCount()I
    .locals 3

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mFaceRectCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "face_detections"

    invoke-virtual {v0, v1}, Lcom/mediatek/accessor/util/JsonParser;->getArrayLength(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mFaceRectCount:I

    sget-object v0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getFaceRectCount> mFaceRectCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mFaceRectCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mFaceRectCount:I

    return v0
.end method

.method public getFaceRip(I)I
    .locals 3

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "face_detections"

    const-string v2, "rotation-in-plane"

    invoke-virtual {v0, v1, p1, v2}, Lcom/mediatek/accessor/util/JsonParser;->getObjectPropertyValueFromArray(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getGDepthFar()D
    .locals 5

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "GDepth"

    const-string v2, "Far"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    sget-object v2, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<getGDepthFar>  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public getGDepthFormat()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "GDepth"

    const-string v2, "Format"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueStringFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getGDepthFormat>  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getGDepthMime()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "GDepth"

    const-string v2, "Mime"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueStringFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getGDepthMime>  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getGDepthNear()D
    .locals 5

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "GDepth"

    const-string v2, "Near"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    sget-object v2, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<getGDepthNear>  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public getGFocusBlurAtInfinity()D
    .locals 5

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "GFocus"

    const-string v2, "BlurAtInfinity"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueDoubleFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    sget-object v2, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<getGFocusBlurAtInfinity>  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public getGFocusFocalDistance()D
    .locals 5

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "GFocus"

    const-string v2, "FocalDistance"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueDoubleFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    sget-object v2, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<getGFocusFocalDistance>  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public getGFocusFocalPointX()D
    .locals 5

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "GFocus"

    const-string v2, "FocalPointX"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueDoubleFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    sget-object v2, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<getGFocusFocalPointX>  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public getGFocusFocalPointY()D
    .locals 5

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "GFocus"

    const-string v2, "FocalPointY"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueDoubleFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    sget-object v2, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<getGFocusFocalPointY>  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public getGImageMime()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "GImage"

    const-string v2, "Mime"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueStringFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getGImageMime>  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getGeoVerifyLevel()I
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "verify_geo_data"

    const-string v2, "quality_level"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getGoogleDepthHeight()I
    .locals 4

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mGDepthHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "depth_buffer_size"

    const/4 v2, 0x0

    const-string v3, "height"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mGDepthHeight:I

    sget-object v0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getGoogleDepthHeight> mGDepthHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mGDepthHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mGDepthHeight:I

    return v0
.end method

.method public getGoogleDepthWidth()I
    .locals 4

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mGDepthWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "depth_buffer_size"

    const/4 v2, 0x0

    const-string v3, "width"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mGDepthWidth:I

    sget-object v0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getGoogleDepthWidth> mGDepthWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mGDepthWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mGDepthWidth:I

    return v0
.end method

.method public getJpsHeight()I
    .locals 4

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mJpsHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "JPS_size"

    const/4 v2, 0x0

    const-string v3, "height"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mJpsHeight:I

    sget-object v0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getJpsHeight> mJpsHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mJpsHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mJpsHeight:I

    return v0
.end method

.method public getJpsWidth()I
    .locals 4

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mJpsWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "JPS_size"

    const/4 v2, 0x0

    const-string v3, "width"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mJpsWidth:I

    sget-object v0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getJpsWidth> mJpsWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mJpsWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mJpsWidth:I

    return v0
.end method

.method public getLdcHeight()I
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "ldc_size"

    const-string v2, "height"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getLdcHeight> ldcHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getLdcWidth()I
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "ldc_size"

    const-string v2, "width"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getLdcWidth> ldcWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getMainCamPos()I
    .locals 4

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMainCamPostion:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "sensor_relative_position"

    const/4 v2, 0x0

    const-string v3, "relative_position"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMainCamPostion:I

    sget-object v0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getMainCamPos> mMainCamPostion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMainCamPostion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMainCamPostion:I

    return v0
.end method

.method public getMaskBuffer()[B
    .locals 3

    invoke-virtual {p0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getMaskSize()I

    move-result v0

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMaskSize:I

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "mask_info"

    const-string v2, "mask"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/accessor/util/JsonParser;->getInt2DArrayFromObject(Ljava/lang/String;Ljava/lang/String;)[[I

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    const-string v1, "<getMaskBuffer> Json mask array is null, return null!!"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v1, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMaskSize:I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->decodeMaskBuffer([[II)[B

    move-result-object v0

    return-object v0
.end method

.method public getMaskHeight()I
    .locals 4

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMaskHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "mask_info"

    const/4 v2, 0x0

    const-string v3, "height"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMaskHeight:I

    sget-object v0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getMaskHeight> mMaskHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMaskHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMaskHeight:I

    return v0
.end method

.method public getMaskSize()I
    .locals 3

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMaskSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getMaskWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->getMaskHeight()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMaskSize:I

    sget-object v0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getMaskSize> mMaskSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMaskSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMaskSize:I

    return v0
.end method

.method public getMaskWidth()I
    .locals 4

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMaskWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "mask_info"

    const/4 v2, 0x0

    const-string v3, "width"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMaskWidth:I

    sget-object v0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getMaskWidth> mMaskWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMaskWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mMaskWidth:I

    return v0
.end method

.method public getMaxDac()I
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "focus_info"

    const-string v2, "dac_max"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getFocusInfo> FocusInfo.maxDac: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getMetaBufferHeight()I
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "packed_depth_buffer_info"

    const-string v2, "meta_height"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getMetaBufferHeight> metaHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getMetaBufferWidth()I
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "packed_depth_buffer_info"

    const-string v2, "meta_width"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getMetaBufferWidth> metaWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getMinDac()I
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "focus_info"

    const-string v2, "dac_min"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getFocusInfo> FocusInfo.minDac: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getMtkChaVerifyLevel()I
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "verify_mtk_cha"

    const-string v2, "quality_level"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 4

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "capture_orientation"

    const/4 v2, 0x0

    const-string v3, "orientation"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mOrientation:I

    sget-object v0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getOrientation> mOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mOrientation:I

    return v0
.end method

.method public getPhoVerifyLevel()I
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "verify_pho_data"

    const-string v2, "quality_level"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPosX()I
    .locals 4

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mPosX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "main_cam_align_shift"

    const/4 v2, 0x0

    const-string v3, "x"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mPosX:I

    sget-object v0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getPosX> mPosX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mPosX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mPosX:I

    return v0
.end method

.method public getPosY()I
    .locals 4

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mPosY:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "main_cam_align_shift"

    const/4 v2, 0x0

    const-string v3, "y"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mPosY:I

    sget-object v0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getPosY> mPosY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mPosY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mPosY:I

    return v0
.end method

.method public getTouchCoordX1st()I
    .locals 5

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mTouchCoordX1st:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "focus_roi"

    const-string v2, "left"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v2, "focus_roi"

    const-string v4, "right"

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mTouchCoordX1st:I

    sget-object v0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getTouchCoordX1st> mTouchCoordX1st: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mTouchCoordX1st:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mTouchCoordX1st:I

    return v0
.end method

.method public getTouchCoordY1st()I
    .locals 5

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mTouchCoordY1st:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "focus_roi"

    const-string v2, "top"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v2, "focus_roi"

    const-string v4, "bottom"

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mTouchCoordY1st:I

    sget-object v0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getTouchCoordY1st> mTouchCoordY1st: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mTouchCoordY1st:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mTouchCoordY1st:I

    return v0
.end method

.method public getViewHeight()I
    .locals 4

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mViewHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "input_image_size"

    const/4 v2, 0x0

    const-string v3, "height"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mViewHeight:I

    sget-object v0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getViewHeight> mViewHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mViewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mViewHeight:I

    return v0
.end method

.method public getViewWidth()I
    .locals 4

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mViewWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mParser:Lcom/mediatek/accessor/util/JsonParser;

    const-string v1, "input_image_size"

    const/4 v2, 0x0

    const-string v3, "width"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/accessor/util/JsonParser;->getValueIntFromObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mViewWidth:I

    sget-object v0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<getViewWidth> mViewWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mViewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mediatek/accessor/util/StereoInfoJsonParser;->mViewWidth:I

    return v0
.end method
