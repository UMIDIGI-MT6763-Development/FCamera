.class Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$TuSDKAudioDecoderTaskMangaerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->mixAudios(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$1;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;->Complete:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$1;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Decoded:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;)V

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$1;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;->Cancelled:Lorg/lasque/tusdk/video/mixer/TuSDKAudioDecoderTaskManagaer$State;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$1;->a:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;

    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Cancelled:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer;Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;)V

    :cond_1
    :goto_0
    return-void
.end method
