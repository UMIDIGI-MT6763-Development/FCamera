.class public Lcom/freeme/camera/util/UsageStatistics;
.super Ljava/lang/Object;
.source "UsageStatistics.java"


# static fields
.field public static final NONE:I = -0x1

.field public static final VIEW_TIMEOUT_MILLIS:J

.field private static sInstance:Lcom/freeme/camera/util/UsageStatistics;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/freeme/camera/util/UsageStatistics;
    .locals 1

    sget-object v0, Lcom/freeme/camera/util/UsageStatistics;->sInstance:Lcom/freeme/camera/util/UsageStatistics;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/util/UsageStatistics;

    invoke-direct {v0}, Lcom/freeme/camera/util/UsageStatistics;-><init>()V

    sput-object v0, Lcom/freeme/camera/util/UsageStatistics;->sInstance:Lcom/freeme/camera/util/UsageStatistics;

    :cond_0
    sget-object v0, Lcom/freeme/camera/util/UsageStatistics;->sInstance:Lcom/freeme/camera/util/UsageStatistics;

    return-object v0
.end method


# virtual methods
.method public backgrounded()V
    .locals 0

    return-void
.end method

.method public cameraFailure(ILjava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public changeScreen(ILjava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public controlUsed(I)V
    .locals 0

    return-void
.end method

.method public foregrounded(II)V
    .locals 0

    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public mediaInteraction(Ljava/lang/String;IIF)V
    .locals 0

    return-void
.end method

.method public mediaView(Ljava/lang/String;JF)V
    .locals 0

    return-void
.end method

.method public photoCaptureDoneEvent(ILjava/lang/String;Lcom/freeme/camera/common/exif/ExifInterface;ZZFLjava/lang/String;ZLjava/lang/Float;Lcom/freeme/camera/util/TouchCoordinate;Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public reportMemoryConsumed(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public storageWarning(J)V
    .locals 0

    return-void
.end method

.method public tapToFocus(Lcom/freeme/camera/util/TouchCoordinate;Ljava/lang/Float;)V
    .locals 0

    return-void
.end method

.method public videoCaptureDoneEvent(Ljava/lang/String;JZFIIJLjava/lang/String;Z)V
    .locals 0

    return-void
.end method
