.class public final enum Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TuSDKMovieEditorStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LoadVideoFailed:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

.field public static final enum Loaded:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

.field public static final enum Paused:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

.field public static final enum Previewing:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

.field public static final enum PreviewingCompleted:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

.field public static final enum Recording:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

.field public static final enum RecordingFailed:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

.field public static final enum Unknow:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

.field private static final synthetic a:[Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    const-string v1, "Unknow"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Unknow:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    const-string v1, "Loaded"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Loaded:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    const-string v1, "LoadVideoFailed"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->LoadVideoFailed:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    const-string v1, "Paused"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Paused:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    const-string v1, "Previewing"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Previewing:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    const-string v1, "PreviewingCompleted"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->PreviewingCompleted:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    const-string v1, "Recording"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Recording:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    const-string v1, "RecordingFailed"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->RecordingFailed:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Unknow:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Loaded:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->LoadVideoFailed:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Paused:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    aput-object v1, v0, v5

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Previewing:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    aput-object v1, v0, v6

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->PreviewingCompleted:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    aput-object v1, v0, v7

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->Recording:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    aput-object v1, v0, v8

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->RecordingFailed:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    aput-object v1, v0, v9

    sput-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->a:[Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->a:[Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorStatus;

    return-object v0
.end method
