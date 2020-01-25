.class public final enum Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MovieWriterOutputFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MPEG_4:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;

.field private static final synthetic b:[Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;

    const-string v1, "MPEG_4"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;->MPEG_4:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;

    sget-object v1, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;->MPEG_4:Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;

    aput-object v1, v0, v2

    sput-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;->b:[Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;->b:[Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;

    return-object v0
.end method


# virtual methods
.method public getOutputFormat()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKMovieWriterInterface$MovieWriterOutputFormat;->a:I

    return v0
.end method
