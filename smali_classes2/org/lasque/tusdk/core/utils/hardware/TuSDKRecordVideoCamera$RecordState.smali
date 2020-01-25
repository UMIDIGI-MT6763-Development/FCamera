.class public final enum Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Canceled:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

.field public static final enum Paused:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

.field public static final enum RecordCompleted:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

.field public static final enum Recording:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

.field public static final enum Saving:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    const-string v1, "Recording"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;->Recording:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    const-string v1, "Saving"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;->Saving:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    const-string v1, "Paused"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;->Paused:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    const-string v1, "RecordCompleted"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;->RecordCompleted:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    const-string v1, "Canceled"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;->Canceled:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;->Recording:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;->Saving:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;->Paused:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;->RecordCompleted:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;->Canceled:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    aput-object v1, v0, v6

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;->a:[Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;->a:[Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    return-object v0
.end method
