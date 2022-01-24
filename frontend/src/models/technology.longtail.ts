import type { LongTail } from "./longtail";
import type { Technology } from "./technology";

export interface TechnologyLongTail {
    long_tails: LongTail[],
    technologies: Technology[]
}