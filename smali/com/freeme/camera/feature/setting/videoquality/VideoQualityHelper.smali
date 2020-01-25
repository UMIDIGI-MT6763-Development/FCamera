.class public Lcom/freeme/camera/feature/setting/videoquality/VideoQualityHelper;
.super Ljava/lang/Object;
.source "VideoQualityHelper.java"


# static fields
.field private static final QUALITY_2K:I = 0x384000

.field private static final QUALITY_4K_1:I = 0x7e9000

.field private static final QUALITY_4K_2:I = 0x7f8000

.field private static final QUALITY_CIF:I = 0x18c00

.field private static final QUALITY_FHD_1:I = 0x1fa400

.field private static final QUALITY_FHD_2:I = 0x1fe000

.field private static final QUALITY_HD:I = 0xe1000

.field private static final QUALITY_QCIF:I = 0x6300

.field private static final QUALITY_QVGA:I = 0x12c00

.field private static final QUALITY_VGA_1:I = 0x4b000

.field private static final QUALITY_VGA_2:I = 0x54600

.field static sMtkVideoQualities:[I

.field static sVideoQualities:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityHelper;->sVideoQualities:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/freeme/camera/feature/setting/videoquality/VideoQualityHelper;->sMtkVideoQualities:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x6
        0x5
        0x4
        0x3
        0x7
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x7b
        0x6f
        0x6e
        0x6d
        0x6c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCurrentResolution(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/mediatek/camera/portability/CamcorderProfileEx;->getProfile(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getQualityTitle(Landroid/app/Activity;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/mediatek/camera/portability/CamcorderProfileEx;->getProfile(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    const-string p2, ""

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    mul-int/2addr v0, p1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0f016c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0f016b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0f016e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0f016f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0f0172

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0f016d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0f0171

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0f0170

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        0x6300 -> :sswitch_7
        0x12c00 -> :sswitch_6
        0x18c00 -> :sswitch_5
        0x4b000 -> :sswitch_4
        0x54600 -> :sswitch_4
        0xe1000 -> :sswitch_3
        0x1fa400 -> :sswitch_2
        0x1fe000 -> :sswitch_2
        0x384000 -> :sswitch_1
        0x7e9000 -> :sswitch_0
        0x7f8000 -> :sswitch_0
    .end sparse-switch
.end method
