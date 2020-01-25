.class public final enum Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Keep:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

.field public static final enum Normal:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;->Normal:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    new-instance v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    const-string v1, "Keep"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;->Keep:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;->Normal:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;->Keep:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    aput-object v1, v0, v3

    sput-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;->a:[Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;->a:[Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordMode;

    return-object v0
.end method
