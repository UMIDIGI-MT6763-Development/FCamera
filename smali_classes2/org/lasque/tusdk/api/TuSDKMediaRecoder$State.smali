.class public final enum Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/api/TuSDKMediaRecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Canceled:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

.field public static final enum Idle:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

.field public static final enum Paused:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

.field public static final enum RecordCompleted:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

.field public static final enum Recording:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

.field public static final enum Saving:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

.field private static final synthetic a:[Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    const-string v1, "Idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->Idle:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    new-instance v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    const-string v1, "Recording"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->Recording:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    new-instance v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    const-string v1, "Paused"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->Paused:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    new-instance v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    const-string v1, "Saving"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->Saving:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    new-instance v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    const-string v1, "RecordCompleted"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->RecordCompleted:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    new-instance v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    const-string v1, "Canceled"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->Canceled:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    sget-object v1, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->Idle:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->Recording:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->Paused:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->Saving:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->RecordCompleted:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    aput-object v1, v0, v6

    sget-object v1, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->Canceled:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    aput-object v1, v0, v7

    sput-object v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->a:[Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->a:[Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    return-object v0
.end method
