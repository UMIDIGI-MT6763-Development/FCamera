.class public final enum Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TuSDKMovieEditorSoundStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Loaded:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

.field public static final enum Loading:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

.field public static final enum None:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

.field private static final synthetic a:[Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;->None:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    const-string v1, "Loading"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;->Loading:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    const-string v1, "Loaded"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;->Loaded:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;->None:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;->Loading:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;->Loaded:Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    aput-object v1, v0, v4

    sput-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;->a:[Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

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

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;->a:[Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/video/editor/TuSDKMovieEditor$TuSDKMovieEditorSoundStatus;

    return-object v0
.end method
