.class public final enum Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum InvalidRecordingTime:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

.field public static final enum LessMinRecordingTime:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

.field public static final enum MoreMaxDuration:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

.field public static final enum NotEnoughSpace:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

.field public static final enum SaveFailed:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

.field public static final enum Unknow:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    const-string v1, "Unknow"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;->Unknow:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    const-string v1, "NotEnoughSpace"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;->NotEnoughSpace:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    const-string v1, "InvalidRecordingTime"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;->InvalidRecordingTime:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    const-string v1, "LessMinRecordingTime"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;->LessMinRecordingTime:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    const-string v1, "MoreMaxDuration"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;->MoreMaxDuration:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    const-string v1, "SaveFailed"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;->SaveFailed:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;->Unknow:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;->NotEnoughSpace:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;->InvalidRecordingTime:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;->LessMinRecordingTime:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    aput-object v1, v0, v5

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;->MoreMaxDuration:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    aput-object v1, v0, v6

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;->SaveFailed:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    aput-object v1, v0, v7

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;->a:[Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;->a:[Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    return-object v0
.end method
