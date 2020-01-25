.class public Lcom/freeme/camera/feature/setting/picturesize/PictureSize;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "PictureSize.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView$OnValueChangeListener;


# static fields
.field private static final KEY_PICTURE_SIZE:Ljava/lang/String; = "key_picture_size"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field public mApp:Lcom/freeme/camera/common/app/IApp;

.field public mCameraId:Ljava/lang/String;

.field private mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mSettingView:Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/picturesize/PictureSize;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object p0
.end method

.method private getDefaultPictureSize()Ljava/lang/String;
    .locals 15

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mCameraId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getRatioForCameraId(Ljava/lang/String;)D

    move-result-wide v0

    const-string v2, "1"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide v3, 0x4001555555555555L    # 2.1666666666666665

    const-wide v5, 0x4000e38e38e38e39L    # 2.111111111111111

    const-wide v7, 0x3ff5555555555555L    # 1.3333333333333333

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    const-wide v11, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    const/4 v13, 0x0

    if-eqz v2, :cond_5

    sget-object v2, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_picturesize_front_default:Ljava/lang/String;

    if-eqz v2, :cond_13

    sget-object v2, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_picturesize_front_default:Ljava/lang/String;

    const-string v14, "16x9"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-wide v0, v11

    goto/16 :goto_0

    :cond_0
    const-string v11, "18x9"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-wide v0, v9

    goto/16 :goto_0

    :cond_1
    const-string v9, "4x3"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-wide v0, v7

    goto/16 :goto_0

    :cond_2
    const-string v7, "19x9"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-wide v0, v5

    goto/16 :goto_0

    :cond_3
    const-string v5, "13x6"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-wide v0, v3

    goto/16 :goto_0

    :cond_4
    move-object v13, v2

    goto/16 :goto_0

    :cond_5
    const-string v2, "0"

    iget-object v14, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_picturesize_back_default:Ljava/lang/String;

    if-eqz v2, :cond_13

    sget-object v2, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_picturesize_back_default:Ljava/lang/String;

    const-string v14, "16x9"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    move-wide v0, v11

    goto/16 :goto_0

    :cond_6
    const-string v11, "18x9"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    move-wide v0, v9

    goto/16 :goto_0

    :cond_7
    const-string v9, "4x3"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    move-wide v0, v7

    goto/16 :goto_0

    :cond_8
    const-string v7, "19x9"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move-wide v0, v5

    goto/16 :goto_0

    :cond_9
    const-string v5, "13x6"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move-wide v0, v3

    goto/16 :goto_0

    :cond_a
    move-object v13, v2

    goto/16 :goto_0

    :cond_b
    const-string v2, "3"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_picturesize_wide_default:Ljava/lang/String;

    if-eqz v2, :cond_13

    sget-object v2, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_picturesize_wide_default:Ljava/lang/String;

    const-string v3, "16x9"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-wide v0, v11

    goto :goto_0

    :cond_c
    const-string v3, "18x9"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-wide v0, v9

    goto :goto_0

    :cond_d
    const-string v3, "4x3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    move-wide v0, v7

    goto :goto_0

    :cond_e
    move-object v13, v2

    goto :goto_0

    :cond_f
    const-string v2, "4"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    sget-object v2, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_picturesize_micro_len_default:Ljava/lang/String;

    if-eqz v2, :cond_13

    sget-object v2, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_picturesize_micro_len_default:Ljava/lang/String;

    const-string v3, "16x9"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-wide v0, v11

    goto :goto_0

    :cond_10
    const-string v3, "18x9"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move-wide v0, v9

    goto :goto_0

    :cond_11
    const-string v3, "4x3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move-wide v0, v7

    goto :goto_0

    :cond_12
    move-object v13, v2

    :cond_13
    :goto_0
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getEntryValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->getStandardAspectRatio(Ljava/lang/String;)D

    move-result-wide v4

    cmpl-double v4, v4, v0

    if-nez v4, :cond_14

    if-nez v13, :cond_14

    goto :goto_1

    :cond_15
    move-object v3, v13

    :goto_1
    if-nez v3, :cond_16

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getEntryValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    :cond_16
    return-object v3
.end method

.method private getPictureSizeForFullscreen()Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->getStandardAspectRatio(Ljava/lang/String;)D

    move-result-wide v3

    const-wide v5, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    cmpl-double v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->getStandardAspectRatio(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_2

    move-object v2, v3

    :cond_3
    if-nez v2, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->getStandardAspectRatio(Ljava/lang/String;)D

    move-result-wide v3

    const-wide v5, 0x4000e38e38e38e39L    # 2.111111111111111

    cmpl-double v3, v3, v5

    if-nez v3, :cond_4

    goto :goto_1

    :cond_5
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getEntryValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_6
    return-object v1
.end method

.method private getPictureSizeForFullscreen(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getEntryValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->getStandardAspectRatio(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v7, v6, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v6, v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-gt v7, v1, :cond_0

    if-gt v6, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->getStandardAspectRatio(Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_2

    const-string v6, "x"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v7, v6, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v6, v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-gt v7, v1, :cond_2

    if-gt v6, p1, :cond_2

    goto :goto_1

    :cond_3
    move-object v4, v5

    :goto_1
    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getEntryValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    :cond_4
    return-object v4
.end method

.method private getPictureSizeForRation(D)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->getStandardAspectRatio(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v2, v2, p1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getEntryValues()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :cond_2
    return-object v1
.end method

.method private getPictureSizeForRation(DLjava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "x"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aget-object v1, p3, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object p3, p3, v2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getEntryValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->getStandardAspectRatio(Ljava/lang/String;)D

    move-result-wide v5

    cmpl-double v5, v5, p1

    if-nez v5, :cond_0

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-gt v6, v1, :cond_0

    if-gt v5, p3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getEntryValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    :cond_2
    return-object v4
.end method

.method private getRatioForCameraId(Ljava/lang/String;)D
    .locals 2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->findFullScreenRatio(Landroid/content/Context;)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public addViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mSettingView:Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mSettingView:Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mSettingView:Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->setOnValueChangeListener(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView$OnValueChangeListener;)V

    :cond_0
    const/16 v0, 0x66

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mSettingView:Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->addSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mSettingView:Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->removeSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    :goto_1
    return-void
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeCaptureRequestConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeCaptureRequestConfig;-><init>(Lcom/freeme/camera/feature/setting/picturesize/PictureSize;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeCaptureRequestConfig;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_picture_size"

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeParametersConfig;-><init>(Lcom/freeme/camera/feature/setting/picturesize/PictureSize;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeParametersConfig;

    return-object v0
.end method

.method public getSettingType()Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p3}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method public onValueChanged(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueChanged], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize$1;-><init>(Lcom/freeme/camera/feature/setting/picturesize/PictureSize;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onValueInitialized(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onValueInitialized], supportedPictureSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->setSupportedPlatformValues(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->setSupportedEntryValues(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->setEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_default_picture_size"

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getDefaultPictureSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_picture_size_fullscreen"

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getPictureSizeForFullscreen()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_picture_size_4_3"

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-direct {p0, v2, v3}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getPictureSizeForRation(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getStoreScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v5, v6, v4}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->slr_mode_previewsize_radio_default:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->slr_mode_previewsize_radio_default:Ljava/lang/String;

    const-string v1, "4x3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_picture_size_for_slr"

    const-string v5, "2560x1440"

    invoke-direct {p0, v2, v3, v5}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getPictureSizeForRation(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getStoreScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v5, v6, v4}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_picture_size_for_slr"

    const-string v5, "2560x1440"

    invoke-direct {p0, v5}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getPictureSizeForFullscreen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getStoreScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v5, v6, v4}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_picture_size_for_slr"

    const-string v5, "2560x1440"

    invoke-direct {p0, v5}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getPictureSizeForFullscreen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getStoreScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v5, v6, v4}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->findFullScreenRatio(Landroid/content/Context;)D

    move-result-wide v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide v6, 0x4001555555555555L    # 2.1666666666666665

    cmpl-double v6, v0, v6

    const-wide v7, 0x4000e38e38e38e39L    # 2.111111111111111

    const-wide v9, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    if-nez v6, :cond_2

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    cmpl-double v6, v0, v7

    if-nez v6, :cond_3

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    cmpl-double v6, v0, v11

    if-nez v6, :cond_4

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->setDesiredAspectRatios(Ljava/util/List;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getDefaultPictureSize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getStoreScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v5, v6}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onValueInitialized], value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isn\'t supported in current platform"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v3, v5, v4}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v2, v3

    :cond_5
    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getEntryValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->getStandardAspectRatio(Ljava/lang/String;)D

    move-result-wide v5

    cmpl-double v5, v5, v0

    if-nez v5, :cond_6

    move-object v2, v3

    :cond_7
    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getEntryValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    :cond_8
    invoke-virtual {p0, v2}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public refreshViewEntry()V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mSettingView:Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getDefaultPictureSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mSettingView:Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mSettingView:Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getEntryValues()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->setEntryValues(Ljava/util/List;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mSettingView:Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getEntryValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v2, "key_restore_settings"

    const-string v4, "off"

    const-string v5, "_global_scope"

    invoke-virtual {v1, v2, v4, v5}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mSettingView:Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;->setSummary(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_1
    return-void
.end method

.method public removeViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSize;->mSettingView:Lcom/freeme/camera/feature/setting/picturesize/PictureSizeSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->removeSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    return-void
.end method
