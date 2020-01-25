.class Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$OnAudioMixerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$1;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMixed([B)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$1;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-static {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)Ljava/io/FileOutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$1;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-static {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onMixingError(I)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$1;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)Ljava/io/FileOutputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$1;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)Ljava/io/FileOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onReayTrunkTrackInfo(Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$1;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;)Lorg/lasque/tusdk/core/decoder/TuSDKAudioInfo;

    return-void
.end method

.method public onStateChanged(Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Decoding:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$1;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;->Decoding:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

    :goto_0
    invoke-static {p1, v0}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Decoded:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$1;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;->Decoded:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Mixing:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$1;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;->Mixing:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Cancelled:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$1;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;->Cancelled:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;->Complete:Lorg/lasque/tusdk/video/mixer/TuSDKAudioMixer$State;

    if-ne p1, v0, :cond_5

    :try_start_0
    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$1;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)Ljava/io/FileOutputStream;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$1;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->a(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)Ljava/io/FileOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$1;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;->b(Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    iget-object p1, p0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$1;->a:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer;

    sget-object v0, Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;->Failed:Lorg/lasque/tusdk/video/mixer/TuSDKMP4MovieMixer$State;

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method
