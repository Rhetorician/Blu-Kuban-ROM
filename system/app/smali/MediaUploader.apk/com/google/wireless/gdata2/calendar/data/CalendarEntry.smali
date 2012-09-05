.class public Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;
.super Lcom/google/wireless/gdata2/data/Entry;
.source "CalendarEntry.java"


# static fields
.field public static final ACCESS_EDITOR:B = 0x3t

.field public static final ACCESS_FREEBUSY:B = 0x2t

.field public static final ACCESS_NONE:B = 0x0t

.field public static final ACCESS_OWNER:B = 0x4t

.field public static final ACCESS_READ:B = 0x1t

.field public static final ACCESS_ROOT:B = 0x5t


# instance fields
.field private accessLevel:B

.field private alternateLink:Ljava/lang/String;

.field private color:Ljava/lang/String;

.field private hidden:Z

.field private overrideName:Ljava/lang/String;

.field private selected:Z

.field private timezone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/google/wireless/gdata2/data/Entry;-><init>()V

    .line 44
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->accessLevel:B

    .line 46
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->alternateLink:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->color:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->hidden:Z

    .line 49
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->selected:Z

    .line 50
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->timezone:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->overrideName:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-super {p0}, Lcom/google/wireless/gdata2/data/Entry;->clear()V

    .line 61
    iput-byte v2, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->accessLevel:B

    .line 62
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->alternateLink:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->color:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->hidden:Z

    .line 65
    iput-boolean v2, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->selected:Z

    .line 66
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->timezone:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->overrideName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public getAccessLevel()B
    .registers 2

    .prologue
    .line 74
    iget-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->accessLevel:B

    return v0
.end method

.method public getAlternateLink()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->alternateLink:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getOverrideName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->overrideName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public isHidden()Z
    .registers 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->hidden:Z

    return v0
.end method

.method public isSelected()Z
    .registers 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->selected:Z

    return v0
.end method

.method public setAccessLevel(B)V
    .registers 2
    .parameter

    .prologue
    .line 81
    iput-byte p1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->accessLevel:B

    .line 82
    return-void
.end method

.method public setAlternateLink(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->alternateLink:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->color:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setHidden(Z)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->hidden:Z

    .line 124
    return-void
.end method

.method public setOverrideName(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->overrideName:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setSelected(Z)V
    .registers 2
    .parameter

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->selected:Z

    .line 138
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->timezone:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0xa

    .line 169
    const-string v0, "ACCESS LEVEL: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    iget-byte v0, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->accessLevel:B

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 171
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 172
    const-string v0, "ALTERNATE LINK"

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->alternateLink:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "COLOR"

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->color:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "HIDDEN: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->hidden:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 176
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 177
    const-string v0, "SELECTED: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    iget-boolean v0, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->selected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 179
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 180
    const-string v0, "TIMEZONE"

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->timezone:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "OVERRIDE NAME"

    iget-object v1, p0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->overrideName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->appendIfNotNull(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method
