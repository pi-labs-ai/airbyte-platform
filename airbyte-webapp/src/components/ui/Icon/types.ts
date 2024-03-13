export type IconType =
  | "addCircle"
  | "arrowLeft"
  | "arrowRight"
  | "article"
  | "bell"
  | "calendar"
  | "calendarCheck"
  | "caretDown"
  | "cast"
  | "certified"
  | "chart"
  | "chat"
  | "check"
  | "chevronDown"
  | "chevronLeft"
  | "chevronRight"
  | "chevronUp"
  | "chevronUpDown"
  | "clockFilled"
  | "clockOutline"
  | "comments"
  | "community"
  | "connection"
  | "contract"
  | "copy"
  | "credits"
  | "cross"
  | "database"
  | "day"
  | "dbtCloud"
  | "destination"
  | "disabled"
  | "docker"
  | "docs"
  | "download"
  | "drag"
  | "duplicate"
  | "earth"
  | "envelope"
  | "equal"
  | "errorFilled"
  | "errorOutline"
  | "expand"
  | "eye"
  | "eyeSlash"
  | "file"
  | "files"
  | "flash"
  | "folder"
  | "gear"
  | "globe"
  | "google"
  | "grid"
  | "help"
  | "house"
  | "idCard"
  | "import"
  | "infoFilled"
  | "infoOutline"
  | "integrations"
  | "keyCircle"
  | "layers"
  | "lens"
  | "lightbulb"
  | "link"
  | "loading"
  | "location"
  | "lock"
  | "menu"
  | "minus"
  | "minusCircle"
  | "modification"
  | "monitor"
  | "moon"
  | "nested"
  | "note"
  | "notification"
  | "onboarding"
  | "options"
  | "parameters"
  | "pauseFilled"
  | "pauseOutline"
  | "pencil"
  | "play"
  | "plus"
  | "prefix"
  | "pulse"
  | "question"
  | "recipes"
  | "reset"
  | "rocket"
  | "rotate"
  | "schema"
  | "select"
  | "share"
  | "shortVideo"
  | "shrink"
  | "signout"
  | "simpleCircle"
  | "slack"
  | "sleep"
  | "source"
  | "star"
  | "stars"
  | "statusCancelled"
  | "statusError"
  | "statusInactive"
  | "statusInProgress"
  | "statusSleep"
  | "statusSuccess"
  | "statusWarning"
  | "stopFilled"
  | "stopOutline"
  | "successFilled"
  | "successOutline"
  | "suitcase"
  | "sync"
  | "table"
  | "target"
  | "trash"
  | "unlock"
  | "unsorted"
  | "user"
  | "warningFilled"
  | "warningOutline"
  | "wrench";

export type IconColor = "primary" | "disabled" | "action" | "success" | "error" | "warning" | "affordance";
export type IconSize = "xs" | "sm" | "md" | "lg" | "xl";

export interface IconProps {
  type: IconType;
  className?: string;
  size?: IconSize;
  color?: IconColor;
  withBackground?: boolean;
  title?: string;
}
